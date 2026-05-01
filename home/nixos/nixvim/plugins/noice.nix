{ ... }:
{
  plugins.noice = {
    enable = true;
    lazyLoad.settings.event = "VimEnter";
    settings.presets = {
      lsp_doc_border = true;
      inc_rename = true;
    };
  };
}
