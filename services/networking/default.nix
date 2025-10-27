{ config, ... }:
{
  networking.networkmanager = {
    enable = config.networking.hostName == "gray";
  };
}
