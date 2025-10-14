{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Vy";
    userEmail = "alaw2202@gmail.com";
    diff-highlight.enable = true;
    extraConfig = {
      core = {
        editor = "nvim";
      };
    };
    ignores = [
      ".envrc"
      ".venv"
      ".direnv"
    ];
  };

  home.packages = [
    pkgs.git-crypt
  ];

  home.sessionVariables = {
    GITHUB_TOKEN = builtins.readFile ./token.sec;
  };
}
