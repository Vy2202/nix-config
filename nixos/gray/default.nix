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
    ../../services/miniflux
    ../../services/nvidia
    ../../services/gvfs
    ../../services/fonts
    ../../services/stylix
    ../../services/portal
    ../../services/openTabletDriver

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

  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 7;
  };

  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "gray";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  users = {
    mutableUsers = false;
    users.wei = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "video"
        "input"
      ];
      hashedPassword = "$y$j9T$4QWBSIWxflEq9pReZOy2y.$RkOOXATQnfk2ypWt0PNh9/Q0uHaY3wleFvd.A/9h2eC";
      shell = pkgs.zsh;
    };
  };

  i18n = {
    defaultLocale = "zh_CN.UTF-8";
    extraLocales = [ "en_US.UTF-8/UTF-8" ];
  };

  system.stateVersion = "24.11";

}
