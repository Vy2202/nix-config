{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      stylix,
      ...
    }@inputs:
    {
      nixosConfigurations."gray" = nixpkgs.lib.nixosSystem {
        modules = [
          stylix.nixosModules.stylix
          ./nixos/gray
        ];
      };

      nixosConfigurations."blue" = nixpkgs.lib.nixosSystem {
        modules = [
          ./nixos/blue
        ];
      };
    };
}
