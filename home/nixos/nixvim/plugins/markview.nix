{ ... }:
{
  plugins.markview = {
    enable = true;
    lazyLoad.settings = {
      event = "vimEnter";
      keys = [
        {
          __unkeyed-1 = "<Leader>m";
          __unkeyed-2 = "<CMD>Markview<CR>";
        }
      ];
    };
    settings.preview.enable = false;
  };
}
