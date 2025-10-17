{ pkgs, ... }:
{
  home.packages = [
    pkgs.neovim

    # LSP
    pkgs.nil
    pkgs.markdown-oxide

    # 其他依赖
    pkgs.luajitPackages.luarocks-nix # lazy.nvim
    pkgs.imagemagick # snacks.image
    pkgs.ghostscript_headless # snacks.image
    pkgs.tectonic # snacks.image
    pkgs.mermaid-cli # snacks.image
    pkgs.fd # telescope
  ];
}
