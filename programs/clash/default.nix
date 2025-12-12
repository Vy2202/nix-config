# Clash-rs
# 主页：github.com/Watfaq/clash-rs
# 标签：proxy
# 说明：Clash 代理软件的 Rust 版本

{ pkgs, lib, ... }:
{
  environment.systemPackages = [ pkgs.clash-rs ];

  systemd.user.services.clash-daemon = {
    enable = true;
    after = [ "network.target" ];
    wantedBy = [ "default.target" ];
    description = "A custom protocol, rule based network proxy software.";
    serviceConfig = {
      Type = "simple";
      ExecStart = ''${lib.getExe pkgs.clash-rs} -d /etc/clash'';
    };
  };
}
