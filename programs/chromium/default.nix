# Chromium
# 主页：www.chromium.org
# 标签：browser
# 说明：浏览器

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.chromium
  ];
}
