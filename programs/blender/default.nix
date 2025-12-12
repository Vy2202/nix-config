# Blender
# 主页：www.blender.org
# 标签：3D, model, CAD, gui
# 说明：3D 建模软件

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.blender
  ];
}
