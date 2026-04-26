{ ... }:
{
  plugins.diffview = {
    enable = true;
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<Leader>dfo";
        __unkeyed-2 = "DiffviewOpen";
      }
      {
        __unkeyed-1 = "<Leader>dfc";
        __unkeyed-2 = "DiffviewClose";
      }
    ];
  };
}
