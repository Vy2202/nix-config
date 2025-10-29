{ ... }:
{
  services.dnscrypt-proxy2 = {
    enable = true;
    settings = {
      static = {
        "cloudflare".stamp = "sdns://AgcAAAAAAAAABzEuMC4wLjEAEmRucy5jbG91ZGZsYXJlLmNvbQovZG5zLXF1ZXJ5";
      };
    };
  };
}
