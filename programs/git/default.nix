{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    config = {
      user = {
        email = "alaw2202@gmail.com";
        name = "Vy";
      };
    };
  };

  environment.systemPackages = [
    pkgs.git-crypt
  ];
}
