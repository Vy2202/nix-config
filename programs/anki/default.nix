{ pkgs, ... }:
{
  programs.anki = {
    enable = true;
    sync = {
      autoSync = true;
      keyFile = ./syncKey;
      username = "weeeee@duck.com";
    };
    addons = [
      pkgs.ankiAddons.anki-connect
    ];
  };
}
