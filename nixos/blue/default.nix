{ ... }:

{
  imports = [
    ./hardware.nix
    ./services.nix
    ./programs.nix
  ];

  networking.hostName = "blue";

  system.stateVersion = "24.11"; # Did you read the comment?

}
