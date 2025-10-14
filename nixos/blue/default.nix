{ pkgs, ... }:

{
  imports = [
    ./hardware.nix
    ../../services/dae
    ../../services/nix
    ../../services/openWebui
    ../../services/n8n
    ../../services/miniflux
    ../../services/immich
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

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
      ];
      hashedPassword = "$y$j9T$4QWBSIWxflEq9pReZOy2y.$RkOOXATQnfk2ypWt0PNh9/Q0uHaY3wleFvd.A/9h2eC";
      shell = pkgs.zsh;
    };
  };
  programs.zsh.enable = true;

  services.openssh.enable = true;

  system.stateVersion = "24.11"; # Did you read the comment?

}
