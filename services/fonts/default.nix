{ pkgs, ... }:
{
  fonts = {
    packages = [
      pkgs.noto-fonts
      pkgs.noto-fonts-cjk-sans
      pkgs.noto-fonts-cjk-serif
      pkgs.ubuntu-sans-mono
      pkgs.nerd-fonts.symbols-only
      pkgs.sarasa-gothic
    ];

    fontconfig = {
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
          "Sarasa Mono Slab SC"
          "Ubuntu Sans Mono"
          "Noto Sans CJK SC"
          "Symbols Nerd Font Mono"
        ];
      };
    };
  };
}
