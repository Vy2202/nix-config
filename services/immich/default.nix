{ pkgs, ... }:
{
  services.immich = {
    enable = true;
    package = pkgs.immich.overrideAttrs (
      finalAttrs: previousAttrs: rec {
        version = "2.0.1";
        src = pkgs.fetchFromGitHub {
          owner = "immich-app";
          repo = "immich";
          tag = "v${version}";
          hash = "sha256-lpFUjjS7Q2F/Uhog1NdJ8vaVIGjmZM9ZWxW5d0zoQsc=";
        };
      }
    );
  };
}
