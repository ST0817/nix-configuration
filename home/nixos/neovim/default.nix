{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    withRuby = false;
    withPython3 = false;
    viAlias = true;
    plugins =
      with pkgs.vimPlugins;
      let
        other-treesitter-parsers =
          parsers: with parsers; [
            regex
            json
            bash
            nix
            rust
          ];
        treesitter = nvim-treesitter.withPlugins other-treesitter-parsers;
        startPlugins = [
          lze
        ];
        optPlugins = [
          treesitter
          gruvbox-material-nvim
          lualine-nvim
          noice-nvim
          nvim-notify
          neo-tree-nvim
          plenary-nvim
          nui-nvim
          nvim-web-devicons
          telescope-nvim
          blink-cmp
          nvim-lspconfig
          nvim-lsp-file-operations
          conform-nvim
          inc-rename-nvim
          nvim-ufo
          promise-async
          ultimate-autopair-nvim
          vimade
          smart-splits-nvim
          indent-blankline-nvim
          bufferline-nvim
          toggleterm-nvim
          nvim-scrollbar
          neoscroll-nvim
          lean-nvim
        ];
        optMapper = plugin: {
          inherit plugin;
          optional = true;
        };
      in
      startPlugins ++ map optMapper optPlugins;
    extraPackages = with pkgs; [ ripgrep ];
    initLua = builtins.readFile ./config/init.lua;
  };
  xdg.configFile = {
    "nvim/lua".source = ./config/lua;
    "nvim/after".source = ./config/after;
  };
}
