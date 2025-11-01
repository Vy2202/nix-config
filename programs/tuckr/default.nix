{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.tuckr
  ];
}
