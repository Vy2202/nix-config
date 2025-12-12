{ ... }:
{
  imports = [
    ../../services/nix
    ../../services/bootloader
    ../../services/users
    # ../../services/nginx
    ../../services/openssh
    ../../services/postgresql
    ../../services/paperless
    # ../../services/adGuardHome
    # ../../services/dnsctypt
    ../../services/openWebui
    ../../services/miniflux
    ../../services/immich

  ];
}
