{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "lean-nvim";
  package = "lean-nvim";
  maintainers = [ ];
}
// {
  plugins.lean-nvim = {
    enable = true;
    lazyLoad.settings.ft = "lean";
    settings = {
      mappings = true;
      infoview.autoopren = false;
    };
  };
}
