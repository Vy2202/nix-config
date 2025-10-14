{ pkgs, ... }:
{
  home.packages = [
    pkgs.noto-fonts
    pkgs.noto-fonts-cjk-sans
    pkgs.noto-fonts-cjk-serif
    pkgs.ubuntu-sans-mono
    pkgs.nerd-fonts.symbols-only
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [
        "Noto Sans CJK SC"
        "Noto Sans"
        "Symbols Nerd Font"
      ];

      serif = [
        "Noto Serif CJK SC"
        "Noto Serif"
        "Symbols Nerd Font"
      ];

      monospace = [
        "Ubuntu Sans Mono"
        "Noto Sans CJK SC"
        "Symbols Nerd Font"
      ];
    };
  };
}
