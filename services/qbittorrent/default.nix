{ pkgs, ... }:
{
  services.qbittorrent = {
    enable = true;
    package = pkgs.qbittorrent-enhanced-nox;
    webuiPort = 42211;
    openFirewall = true;
  };
}
