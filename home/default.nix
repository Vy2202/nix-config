{ niri-flake, ... }:

{
  home.username = "wei";

  imports = [
    niri-flake.homeModules.niri

    ../programs/fuzzel
    ../programs/ghostty
    ../programs/niri
    # ../programs/keepassxc
    ../programs/obsidian
    ../programs/geminiCli
    # ../programs/kicad
    # ../programs/ripgrep
    ../programs/waybar
    # ../programs/swayimg
    # ../programs/yazi
    # ../programs/devenv
    # ../programs/git
    ../programs/anki
    # ../programs/freecad
    # ../programs/telegram
    # ../programs/drawio
    # ../programs/blender

    ../services/mako
    ../services/portal
    ../services/syncthing
  ];

  manual.html.enable = true;

  home.stateVersion = "25.05";
}
