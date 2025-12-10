{ pkgs, ... }:
{
  users = {
    mutableUsers = false;
    users.wei = {
      isNormalUser = true;
      home = "/home/wei";
      extraGroups = [
        "wheel"
        "video"
        "input"
        "networkmanager"
        "storage"
      ];
      hashedPassword = "$y$j9T$4QWBSIWxflEq9pReZOy2y.$RkOOXATQnfk2ypWt0PNh9/Q0uHaY3wleFvd.A/9h2eC";
      shell = pkgs.zsh;
    };
  };
}
