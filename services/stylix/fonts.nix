{ pkgs, ... }:
{
  stylix.fonts = {
    sizes = {
      applications = 16;
      desktop = 14;
    };
    serif = {
      package = pkgs.noto-fonts;
      name = "Noto Serif";
    };

    sansSerif = {
      package = pkgs.noto-fonts;
      name = "Noto Sans";
    };

    monospace = {
      package = pkgs.sarasa-gothic;
      name = "Sarasa Mono SC";
    };

    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };
}
