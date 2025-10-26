{ pkgs, lib, ... }:
{
  environment.systemPackages = [ pkgs.atuin ];

  programs.zsh = {
    enable = true;
    interactiveShellInit = ''
      eval "$(${lib.getExe pkgs.atuin} init zsh)"
    '';
  };
}
