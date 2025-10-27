{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.stown
  ];
}
