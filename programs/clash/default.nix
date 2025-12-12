# Clash-rs
# 主页：github.com/Watfaq/clash-rs
# 标签：proxy
# 说明：Clash 代理软件的 Rust 版本

{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.clash-rs ];
}
