{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    extraPackages = with pkgs; [
      nixd
      lua-language-server
      stylua
      taplo
    ];
  };

  xdg.configFile.nvim = {
    source = ./config;
    recursive = true;
  };
}
