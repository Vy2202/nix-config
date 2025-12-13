{ ... }:
{
  services.miniflux = {
    enable = true;
    adminCredentialsFile = "/etc/miniflux/cred";
    config = {
      LISTEN_ADDR = "0.0.0.0:11000";
    };
  };

  networking.firewall.allowedTCPPorts = [
    11000
  ];
}
