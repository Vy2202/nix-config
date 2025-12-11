# Drawio
# 主页：www.draw.io
# 标签：drawing
# 说明：绘制图形

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.drawio
  ];
}
