{ ... }:
{
  services.dae = {
    enable = true;
    config = builtins.readFile ./dae.config;
  };
}
