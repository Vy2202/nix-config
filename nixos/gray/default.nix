{ pkgs, ... }:
{
  imports = [
    ./hardware.nix
    ../../services/bluetooth
    ../../services/dae
    ../../services/nix
    ../../services/greetd
    ../../services/wayland
    ../../services/polkit
    ../../services/dconf
    ../../services/nvidia
    ../../services/gvfs
    ../../services/fonts
    ../../services/portal
    ../../services/openTabletDriver
    ../../services/locale
    ../../services/bootloader
    ../../services/networking
    ../../services/mako
    ../../services/users
    ../../services/icons

    ../../programs/minecraft
    ../../programs/androidStudio
    ../../programs/godot
    ../../programs/tuckr
    ../../programs/waybar
    ../../programs/gnupg
    ../../programs/steam
    ../../programs/thunar
    ../../programs/neovim
    ../../programs/firefox
    ../../programs/zsh
    ../../programs/starship
    ../../programs/direnv
    ../../programs/inputMethod
    ../../programs/keepassxc
    ../../programs/kicad
    ../../programs/ripgrep
    ../../programs/swayimg
    ../../programs/yazi
    ../../programs/devenv
    ../../programs/git
    ../../programs/freecad
    ../../programs/telegram
    ../../programs/drawio
    ../../programs/blender
    ../../programs/ghostty
    ../../programs/fuzzel
    ../../programs/niri
    ../../programs/light
    ../../programs/krita
  ];

  environment.systemPackages = [
    pkgs.phinger-cursors
  ];

  networking.hostName = "gray";

  system.stateVersion = "25.05";
}
