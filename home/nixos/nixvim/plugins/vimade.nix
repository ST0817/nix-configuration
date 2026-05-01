{ ... }:
{
  plugins.vimade = {
    enable = true;
    lazyLoad.settings.event = [
      "WinEnter"
      "WinNew"
    ];
    settings = {
      recipe = {
        __unkeyed-1 = "default";
        __unkeyed-2 = {
          animate = true;
        };
      };
      blocklist = [
        {
          __raw = ''
            function(window, active)
                return active.buf_opts.buftype ~= "terminal" and window.buf_opts.ft == "leaninfo"
            end
          '';
        }
      ];
    };
  };
}
