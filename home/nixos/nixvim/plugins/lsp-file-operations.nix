{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "lsp-file-operations";
  package = "nvim-lsp-file-operations";
  maintainers = [ ];
}
// {
  plugins.lsp-file-operations = {
    enable = true;
    lazyLoad.settings.event = "VimEnter";
  };
}
