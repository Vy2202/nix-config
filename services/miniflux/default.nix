{ ... }:
{
  services.miniflux = {
    enable = true;
    adminCredentialsFile = ./adminCredentialsFile;
    config = {
      LISTEN_ADDR = "127.0.0.1:11000";
    };
  };
}
