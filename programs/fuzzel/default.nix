# Fuzzel
# 主页：codeberg.org/dnkl/fuzzel
# 标签：launcher, desktop, wayland
# 说明：Wayland 下的应用启动器

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.fuzzel
  ];
}
