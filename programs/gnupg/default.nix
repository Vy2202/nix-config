# GnuPG
# 主页：gnupg.org
# 标签：encrypt, decrypt
# 说明：非对称加密和解密

{ pkgs, ... }:
{
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-curses;
  };
}
