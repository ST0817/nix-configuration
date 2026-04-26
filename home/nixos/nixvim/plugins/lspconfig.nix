{ ... }:
{
  plugins.lspconfig = {
    enable = true;
    lazyLoad.settings.event = [
      "VimEnter"
      "BufReadPre"
    ];
  };
}
