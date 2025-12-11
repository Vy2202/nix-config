{ pkgs, ... }:
{
  imports = [
    ./hardware.nix
    ./programs.nix
    ./services.nix
 ];

  environment.systemPackages = [
    pkgs.phinger-cursors
  ];

  networking.hostName = "gray";

  system.stateVersion = "25.05";
}
