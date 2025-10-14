{ ... }:
{
  services.open-webui = {
    enable = true;
    port = 10010;
    environment = {
      WEBUI_AUTH = "False";
    };
  };
}
