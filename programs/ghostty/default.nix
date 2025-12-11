# Ghostty
# 主页：ghostty.org
# 标签：terminal
# 说明：终端模拟器

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.ghostty
  ];
}
