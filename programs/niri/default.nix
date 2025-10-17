{ config, ... }:
{
  programs.niri = {
    enable = true;
    settings = {
      prefer-no-csd = true;

      outputs."eDP-1" = {
        scale = 1;
      };

      layout = {
        gaps = 2;
        border.enable = false;
        focus-ring = {
          width = 2;
        };

        preset-column-widths = [
          { proportion = 1. / 2.; }
          { proportion = 1.; }

        ];
      };

      spawn-at-startup = [
        { argv = [ "fcitx5" ]; }
        { argv = [ "mako" ]; }
        { argv = [ "waybar" ]; }
      ];

      environment = {
        QT_QPA_PLATFORM = "wayland";
        XDG_SESSION_TYPE = "wayland";
      };

      cursor = {
        theme = "OpenZone_Ice";
        size = 24;
      };

      binds = with config.lib.niri.actions; {
        "Mod+D".action = spawn "fuzzel";
        "Mod+T".action = spawn "ghostty";

        "Mod+Shift+Slash".action = show-hotkey-overlay;
        "Mod+Shift+E".action = quit;
        "Mod+Q".action = close-window;
        "Mod+O".action = toggle-overview;
        "Mod+R".action = switch-preset-column-width;

        "Mod+H".action = focus-column-left;
        "Mod+L".action = focus-column-right;

        "Mod+Shift+H".action = move-column-left;
        "Mod+Shift+L".action = move-column-right;

        "Mod+U".action = focus-workspace-down;
        "Mod+I".action = focus-workspace-up;

        "Mod+F".action = maximize-column;
        "Mod+Shift+F".action = fullscreen-window;
        "Mod+v".action = toggle-window-floating;
        "Mod+W".action = toggle-column-tabbed-display;

        "Ctrl+Shift+P".action = power-off-monitors;

        "XF86AudioRaiseVolume".action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+";
        "XF86AudioLowerVolume".action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-";
        "XF86AudioMute".action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "XF86AudioMicMute".action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";

      };
    };
  };
}
