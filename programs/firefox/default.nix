# Firefox
# 主页：www.firefox.com
# 标签：browser
# 说明：浏览器

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
