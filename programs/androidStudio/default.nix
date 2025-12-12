# Android Studio
# 主页: developer.android.com
# 标签: development, android, IDE, gui
# 说明：Android 软件开发 IDE

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.android-studio
  ];
}
