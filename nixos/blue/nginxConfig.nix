{ ... }:
{
  services.nginx.virtualHosts = {
    "paperless.homelab.local" = {
      forceSSL = false;
      locations."/" = {
        proxyPass = "http://127.0.0.1:28981";
        proxyWebsockets = true;
      };
    };
  };
}
