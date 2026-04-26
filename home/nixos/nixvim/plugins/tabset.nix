{ pkgs, lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "tabset";
  #moduleName = "tabset";
  package = "tabset";
  maintainers = [ ];
}
// {
  plugins.tabset = {
    package = pkgs.vimUtils.buildVimPlugin {
      name = "tabset";
      src = pkgs.fetchFromGitHub {
        owner = "FotiadisM";
        repo = "tabset.nvim";
        rev = "996f95e4105d053a163437e19a40bd2ea10abeb2";
        sha256 = "sha256-kOLN74p5AvZlmZRd2hT5c1uV7qziVcyIB8fpC1RiDPk=";
      };
    };
    enable = true;
    lazyLoad.settings.event = "InsertEnter";
    settings = {
      defaults = {
        tabwidth = 4;
        expandtab = true;
      };
      languages = [
        {
          filetypes = [
            "nix"
            "lean"
            "typst"
          ];
          config.tabwidth = 2;
        }
      ];
    };
  };
  opta = {
    shiftwidth = 0;
    softtabstop = 0;
    shiftround = true;
  };
}
