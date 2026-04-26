{ ... }:
{
  plugins.neo-tree = {
    enable = true;
    lazyLoad.settings = {
      event = "VimEnter";
      keys = [
        {
          __unkeyed-1 = "<Leader>t";
          __unkeyed-2 = "<CMD>Neotree toggle<CR>";
        }
      ];
    };
    settings.popup_border_style = "rounded";
  };
}
