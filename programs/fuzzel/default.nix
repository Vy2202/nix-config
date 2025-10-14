{ ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        terminal = "ghostty";
        minimal-lines = true;
        line-height = 20;
      };
    };
  };
}
