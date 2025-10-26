{ ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      git_status = {
        ahead = "⇡ ";
        behind = "⇣ ";
      };
    };
  };
}
