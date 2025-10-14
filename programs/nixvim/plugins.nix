{ lib, pkgs, ... }:
{
  programs.nixvim = {
    userCommands = {
      "Format" = {
        command = {
          __raw = ''
            function(args)
              local range = nil
              if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                  start = { args.line1, 0 },
                  ["end"] = { args.line2, end_line:len() },
                }
              end
              require("conform").format({ async = true, lsp_format = "fallback", range = range })
            end'';
        };
        range = true;
      };

    };
    plugins = {
      neo-tree.enable = true;
      web-devicons.enable = true;
      lsp = {
        enable = true;
        servers = {
          nil_ls.enable = true;
          basedpyright.enable = true;
          markdown_oxide.enable = true;
          html.enable = true;
          cssls.enable = true;
          rust_analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
          };
          clangd.enable = true;
        };
      };
      mini-pairs.enable = true;
      blink-cmp = {
        enable = true;
        settings.sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
          ];
        };
      };
      markdown-preview.enable = true;
      conform-nvim = {
        enable = true;
        settings = {
          formatters_by_ft = {
            nix = [ "nixfmt" ];
            html = [ "prettierd" ];
            javascript = [ "prettierd" ];
            css = [ "prettierd" ];
            json = [ "prettierd" ];
            markdown = [ "prettierd" ];
            yaml = [ "prettierd" ];
            scss = [ "prettierd" ];
            python = [ "ruff_format" ];
            cpp = [ "clang-format" ];
            c = [ "clang-format" ];
          };
        };
      };
    };
  };

  home.packages = [
    pkgs.prettierd
    pkgs.ruff
    pkgs.nixfmt
  ];
}
