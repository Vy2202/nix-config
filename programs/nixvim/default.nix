{ ... }:
{
  imports = [
    ./plugins.nix
  ];

  programs.nixvim = {
    enable = true;

    clipboard.register = "unnamedplus";

    opts = {
      encoding = "utf-8";
      fileencoding = "utf-8";

      autoindent = true;
      expandtab = true;
      smartindent = true;
      shiftwidth = 4;
      tabstop = 4;
      softtabstop = 4;
      shiftround = true;

      ignorecase = true;
      smartcase = true;

      cursorline = true;
      number = true;
    };
  };

}
