{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./cursor.nix
  ];
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/darkmoss.yaml";

    targets.firefox.profileNames = [ "default" ];
  };
}
