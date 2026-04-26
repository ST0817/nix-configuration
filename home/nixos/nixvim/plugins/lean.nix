{ ... }:
{
  plugins.lean = {
    enable = true;
    lazyLoad.settings.ft = "lean";
    settings = {
      mappings = true;
      infoview.autoopren = false;
    };
  };
}
