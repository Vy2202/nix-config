{ ... }:
{
  programs.obsidian = {
    enable = true;
    vaults = {
      notes = {
        enable = true;
        target = "Documents/Obsidian";
      };
    };
    defaultSettings = {
      cssSnippets = [
        ./style.css
      ];
    };
  };
}
