{ niri-flake, ... }:

{
  home.username = "wei";

  imports = [
    niri-flake.homeModules.niri

    ../programs/niri
    ../programs/waybar

    ../services/mako
    ../services/portal
  ];

  manual.html.enable = true;

  home.stateVersion = "25.05";
}
