{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    {
      nixosConfigurations."gray" = nixpkgs.lib.nixosSystem {
        modules = [ ./nixos/gray ];
      };

      nixosConfigurations."blue" = nixpkgs.lib.nixosSystem {
        modules = [ ./nixos/blue ];
      };
    };
}
