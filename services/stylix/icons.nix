{ pkgs, ... }:
{
  stylix.icons = {
    enable = true;
    light = "breeze-dark";
    dark = "breeze-dark";
    package = pkgs.kdePackages.breeze-icons;
  };
}
