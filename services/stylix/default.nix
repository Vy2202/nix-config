{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./cursor.nix
    ./icons.nix
  ];
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/darkmoss.yaml";
  };
}
