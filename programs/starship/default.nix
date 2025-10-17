{ ... }:
{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      git_status = {
        ahead = "⇡ ";
        behind = "⇣ ";
      };
    };
  };
}
