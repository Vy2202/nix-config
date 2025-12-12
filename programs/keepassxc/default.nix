# Keepassxc
# 主页：keepassxc.org
# 标签：password_manager, gui, cli
# 说明：口令管理

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.keepassxc
  ];
}
