{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "ultimate-autopair";
  package = "ultimate-autopair-nvim";
  maintainers = [ ];
}
// {
  plugins.ultimate-autopair = {
    enable = true;
    lazyLoad.settings.event = [
      "InsertEnter"
      "CmdlineEnter"
    ];
    settings.fastwarp = {
      map = "<A-[>";
      rmap = "<A-]>";
      cmap = "<A-[>";
      rcmap = "<A-]>";
    };
  };
}
