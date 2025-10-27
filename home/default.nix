{ ... }:

{
  home.username = "wei";

  imports = [
    ../programs/waybar

    # ../services/mako
  ];

  manual.html.enable = true;

  home.stateVersion = "25.05";
}
