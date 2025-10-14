{ pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-bin;
    languagePacks = [
      "zh-CN"
    ];
  };
}
