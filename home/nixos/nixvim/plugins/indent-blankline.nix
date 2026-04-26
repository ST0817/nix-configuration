{ ... }:
{
  plugins.indent-blankline = {
    enable = true;
    lazyLoad.settings.event = "BufReadPre";
    #settings.indent.char = "│";
  };
}
