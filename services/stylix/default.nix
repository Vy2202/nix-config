{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
  ];
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/atelier-savanna-light.yaml";

    targets.firefox.profileNames = [ "default" ];
  };
}
