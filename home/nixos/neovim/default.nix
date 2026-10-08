{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    withRuby = false;
    withPython3 = false;
    viAlias = true;
    defaultEditor = true;
    plugins =
      with pkgs.vimPlugins;
      let
        startPlugins = [
          lze
          gruvbox-material-nvim
          nvim-web-devicons
        ];
        optPlugins = [
          nvim-treesitter.withAllGrammars
          nvim-treesitter-textobjects
          snacks-nvim
          lualine-nvim
          noice-nvim
          yanky-nvim
          blink-cmp
          colorful-menu-nvim
          nvim-lspconfig
          lspsaga-nvim
          conform-nvim
          inc-rename-nvim
          nvim-ufo
          ultimate-autopair-nvim
          vimade
          smart-splits-nvim
          bufferline-nvim
          neoscroll-nvim
          nvim-surround
          toggleterm-nvim
          nvim-dap
          nvim-dap-view
          lean-nvim
          idris2-nvim
        ];
        optMapper = plugin: {
          inherit plugin;
          optional = true;
        };
      in
      startPlugins ++ map optMapper optPlugins;
    extraPackages = with pkgs; [ fd ];
    initLua = builtins.readFile ./config/init.lua;
  };
  xdg.configFile."nvim/lua".source = ./config/lua;
}
