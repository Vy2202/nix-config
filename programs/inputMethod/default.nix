# Fcitx5
# 主页：github.com/fcitx/fcitx5
# 标签：input_method, tool
# 说明：输入法引擎

{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = [
        pkgs.fcitx5-rime
      ];
      waylandFrontend = true;
      settings = {
        globalOptions = {
          "GroupOrder"."0" = "Default";
          "Groups/0" = {
            "Name" = "Default";
            "Default Layout" = "us";
            "DefaultIM" = "rime";
          };
          "Groups/0/Items/0"."Name" = "keyboard-us";
          "Groups/0/Items/1"."Name" = "rime";
        };
      };
    };
  };
}
