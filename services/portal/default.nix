{ pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  systemd.user.services.xdg-desktop-portal-gtk.environment = {
    WAYLAND_DISPLAY = "wayland-1";
    XDG_CURRENT_DESKTOP = "niri";
  };
}
