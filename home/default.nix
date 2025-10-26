{ niri-flake, ... }:

{
  home.username = "wei";

  imports = [
    niri-flake.homeModules.niri

    ../programs/fuzzel
    ../programs/ghostty
    ../programs/niri
    ../programs/geminiCli
    ../programs/waybar
    ../programs/anki

    ../services/mako
    ../services/portal
    ../services/syncthing
  ];

  manual.html.enable = true;

  home.stateVersion = "25.05";
}
