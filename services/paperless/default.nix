{ ... }:
{
  services.paperless = {
    enable = true;
    port = 22222;
    address = "0.0.0.0";
    database = {
      createLocally = true;
    };
  };

  networking.firewall.allowedTCPPorts = [
    22222
  ];
}
