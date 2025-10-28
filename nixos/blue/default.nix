{ ... }:

{
  imports = [
    ./hardware.nix
    ../../services/dae
    ../../services/nix
    ../../services/bootloader
    ../../services/users
    ../../programs/zsh
    ../../programs/starship

    ../../services/nginx
    ../../services/openssh
    ../../services/postgresql
    ../../services/paperless
    ../../services/adGuardHome
    ../../services/openWebui
    ../../services/miniflux
    ../../services/immich

    ./nginxConfig.nix
  ];

  networking.hostName = "blue";

  system.stateVersion = "24.11"; # Did you read the comment?

}
