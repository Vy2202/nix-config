# Godot
# 主页：godotengine.org
# 标签：development, IDE, game, gui
# 说明：游戏引擎和 IDE

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.godot
  ];
}
