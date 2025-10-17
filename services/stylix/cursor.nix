{ pkgs, ... }:
{
  stylix.cursor = {
    name = "OpenZone_Ice";
    package = pkgs.openzone-cursors;
    size = 24;
  };
}
