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
    # ../../services/openWebui
    # ../../services/n8n
    ../../services/miniflux
    # ../../services/immich
    ../../services/nvidia

    ../../programs/gnupg
    ../../programs/steam
  ];

  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 7;
  };

  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "gray";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

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
  programs.zsh.enable = true;

  programs.light.enable = true;

  system.stateVersion = "24.11";

}
