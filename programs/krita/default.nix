# Krita
# 主页：krita.org
# 标签：drawing, gui
# 说明：插画绘制和图像处理

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.krita
  ];
}
