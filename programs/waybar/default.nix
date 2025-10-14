{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 20;
        modules-left = [
          "niri/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "backlight"
          "pulseaudio"
          "temperature"
          "battery"
          "keyboard-state"
          "tray"
        ];

        "tray" = {
          "icon-size" = 18;
        };

        "temperature" = {
          format = " {temperatureC}°C";
        };

        "pulseaudio" = {
          format = " {volume}%";
        };

        "backlight" = {
          format = " {percent}%";
        };
      };
    };
    style = ''
      #workspaces button {
        padding: 0 5px;
        border-bottom: 3px solid transparent;
      }
    '';
  };
}
