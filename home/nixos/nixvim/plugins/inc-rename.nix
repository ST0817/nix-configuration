{ ... }:
{
  plugins.inc-rename = {
    enable = true;
    settings.input_buffer_type.__raw = ''"noice"'';
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<Leader>rn";
        __unkeyed-2 = ":IncRename ";
      }
    ];
  };
}
