{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 32;
        spacing = 16;
        modules-left = [
          "niri/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "network"
          "backlight"
          "pulseaudio"
          "battery"
          "keyboard-state"
          "tray"
        ];

        "clock" = {
          "interval" = 60;
          "format" = "{:%F %H:%M}";
          "max-length" = 25;
        };

        "network" = {
          "interface" = "wlo1";
          "format" = "{ifname}";
          "format-wifi" = "WLAN {essid} {signalStrength}%";
          "format-disconnected" = "WLAN DISCONNECTED";
          "tooltip-format" = "Up: {bandwidthUpBytes} Down: {bandwidthDownBytes}";
          "max-length" = 50;
        };

        "tray" = {
          "icon-size" = 18;
        };

        "pulseaudio" = {
          format = "VOL {volume}%";
        };

        "backlight" = {
          format = "BKL {percent}%";
        };

        "battery" = {
          format = "BAT {capacity}%";
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
