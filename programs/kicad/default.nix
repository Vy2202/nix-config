# KiCAD
# 主页：www.kicad.org
# 标签：electronic, PCB, CAD, gui
# 说明：电子电路、PCB 设计

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.kicad
  ];
}
