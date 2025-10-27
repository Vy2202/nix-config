{ ... }:

{
  imports = [
    ./hardware.nix
    ../../services/dae
    ../../services/nix
    ../../services/bootloader
    ../../services/users
    ../../programs/zsh

    ../../services/openssh
    ../../services/postgresql
    ../../services/paperless
    ../../services/adGuardHome
    ../../services/openWebui
    ../../services/miniflux
    ../../services/immich
  ];

  system.stateVersion = "24.11"; # Did you read the comment?

}
