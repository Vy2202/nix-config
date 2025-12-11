# FreeCAD
# 主页：www.freecad.org
# 标签：3D, model, CAD
# 说明：CAD 软件

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.freecad
  ];
}
