# Devenv
# 主页：devenv.sh
# 标签：development, environment_manager, nix
# 说明：使用 Nix 管理开发环境的工具

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.devenv
  ];
}
