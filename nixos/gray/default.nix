{ ... }:
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
    ../../services/miniflux
    ../../services/nvidia
    ../../services/gvfs
    ../../services/fonts
    ../../services/stylix
    ../../services/portal
    ../../services/openTabletDriver
    ../../services/locale
    ../../services/bootloader
    ../../services/networking

    ../../programs/stown
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
  ];

  networking.hostName = "gray";

  system.stateVersion = "24.11";
}
