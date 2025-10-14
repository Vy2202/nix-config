{
  pkgs,
  niri-flake,
  nixvim,
  stylix,
  ...
}:
{
  home.username = "wei";

  imports = [
    nixvim.homeModules.nixvim
    niri-flake.homeModules.niri
    stylix.homeModules.stylix

    ../programs/fuzzel
    ../programs/firefox
    ../programs/ghostty
    ../programs/starship
    ../programs/atuin
    ../programs/zsh
    ../programs/inputMethod
    ../programs/niri
    ../programs/nixvim
    ../programs/keepassxc
    ../programs/obsidian
    # ../programs/krita
    ../programs/qt
    ../programs/direnv
    ../programs/geminiCli
    ../programs/kicad
    ../programs/ripgrep
    ../programs/waybar
    ../programs/swayimg
    ../programs/yazi
    ../programs/devenv
    ../programs/git
    ../programs/anki
    ../programs/freecad
    ../programs/telegram
    ../programs/drawio
    ../programs/blender

    ../services/fonts
    ../services/cursorTheme
    ../services/stylix
    ../services/mako
    ../services/portal
    ../services/syncthing
  ];

  manual.html.enable = true;

  home.stateVersion = "25.05";
}
