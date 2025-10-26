{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    niri-flake = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      niri-flake,
      home-manager,
      stylix,
      ...
    }@inputs:
    {
      nixosConfigurations."gray" = nixpkgs.lib.nixosSystem {
        modules = [
          stylix.nixosModules.stylix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = inputs;
            home-manager.users.wei = import ./home;
          }

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
