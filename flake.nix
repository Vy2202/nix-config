{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
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
