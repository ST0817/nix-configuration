{ ... }:
{
  plugins.nvim-surround = {
    enable = true;
    lazyLoad.settings.event = "BufReadPre";
  };
}
