{ pkgs, ... }:
{
  home.packages = [
    pkgs.noto-fonts
    pkgs.noto-fonts-cjk-sans
    pkgs.noto-fonts-cjk-serif
    pkgs.ubuntu-sans-mono
    pkgs.nerd-fonts.symbols-only
    pkgs.sarasa-gothic
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [
        "Sarasa Gothic SC"
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
        "Symbols Nerd Font Mono"
        "Sarasa Mono SC"
        "Ubuntu Sans Mono"
        "Noto Sans CJK SC"
      ];
    };
  };
}
