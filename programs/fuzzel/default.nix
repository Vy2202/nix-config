{ lib, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = lib.mkForce "Noto Sans:size=12";
        icons-enabled = false;
        terminal = "ghostty";
        minimal-lines = true;
        line-height = 20;
      };
    };
  };
}
