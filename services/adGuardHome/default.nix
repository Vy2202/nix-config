{ ... }:
{
  services.adguardhome = {
    enable = true;
    mutableSettings = false;
    openFirewall = true;
    port = 220011;
  };
}
