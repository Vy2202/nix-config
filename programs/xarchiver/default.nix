{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.xarchiver
  ];
}
