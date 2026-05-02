{ pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings.event = "BufWritePre";
    settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ];
        lua = [ "stylua" ];
        typst = [ "typstyle" ];
        c = [ "clang-format" ];
        cpp = [ "clang-format" ];
      };
      format_after_save = "true";
    };
  };
  extraPackages = with pkgs; [
    nixfmt
    typstyle
  ];
}
