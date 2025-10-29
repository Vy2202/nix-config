{ ... }:
{
  services.open-webui = {
    enable = true;
    port = 10010;
    host = "0.0.0.0";
    openFirewall = true;
    environment = {
      WEBUI_AUTH = "False";
    };
  };
}
