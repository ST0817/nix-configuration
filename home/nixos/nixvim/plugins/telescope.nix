{ pkgs, ... }:
{
  plugins.telescope = {
    enable = true;
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<Leader>ff";
        __unkeyed-2 = "<Cmd>Telescope find_files<CR>";
      }
      {
        __unkeyed-1 = "<Leader>fg";
        __unkeyed-2 = "<Cmd>Telescope live_grep<CR>";
      }
      {
        __unkeyed-1 = "<Leader>fh";
        __unkeyed-2 = "<Cmd>Telescope help_tags<CR>";
      }
      {
        __unkeyed-1 = "<Leader>fn";
        __unkeyed-2 = "<Cmd>Telescope notify<CR>";
      }
      {
        __unkeyed-1 = "<Leader>fk";
        __unkeyed-2 = "<Cmd>Telescope keymaps<CR>";
      }
      {
        __unkeyed-1 = "<Leader>fl";
        __unkeyed-2 = "<Cmd>Telescope highlights<CR>";
      }
    ];
    settings.defaults.prompt_prefix = "❯ ";
  };
  extraPackages = with pkgs; [ ripgrep ];
}
