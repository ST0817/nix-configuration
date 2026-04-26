{ pkgs, ... }:
{
  home.packages = with pkgs; [ stylua ];
  xdg.configFile.stylua.source = ./config;
}
