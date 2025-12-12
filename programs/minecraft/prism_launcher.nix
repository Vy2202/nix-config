# Prism Launcher
# 主页：prismlauncher.org
# 标签：game
# 说明：Minecraft 启动器

{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.prismlauncher ];
}
