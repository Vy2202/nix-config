{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    {
      nixosConfigurations = {
        "gray" = nixpkgs.lib.nixosSystem {
          modules = [ ./nixos/gray ];
        };

        "blue" = nixpkgs.lib.nixosSystem {
          modules = [ ./nixos/blue ];
        };
      };

    }
    // flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default =
          with pkgs;
          mkShell {
            packages = [
              nil
            ];
          };
      }
    );
}
