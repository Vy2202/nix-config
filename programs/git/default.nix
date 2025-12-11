# Git
# 主页：git-scm.com
# 标签：version_control, tool
# 说明：版本管理器

{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    config = {
      user = {
        email = "alaw2202@gmail.com";
        name = "Vy";
      };
    };
  };

  environment.systemPackages = [
    pkgs.git-crypt
  ];
}
