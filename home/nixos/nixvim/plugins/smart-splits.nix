{ ... }:
{
  plugins.smart-splits = {
    enable = true;
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<A-Left>";
        __unkeyed-2.__raw = ''function() require("smart-splits").resize_left() end'';
      }
      {
        __unkeyed-1 = "<A-Right>";
        __unkeyed-2.__raw = ''function() require("smart-splits").resize_right() end'';
      }
      {
        __unkeyed-1 = "<A-Up>";
        __unkeyed-2.__raw = ''function() require("smart-splits").resize_up() end'';
      }
      {
        __unkeyed-1 = "<A-Down>";
        __unkeyed-2.__raw = ''function() require("smart-splits").resize_down() end'';
      }
      {
        __unkeyed-1 = "<C-Left>";
        __unkeyed-2.__raw = ''function() require("smart-splits").move_cursor_left() end'';
      }
      {
        __unkeyed-1 = "<C-Right>";
        __unkeyed-2.__raw = ''function() require("smart-splits").move_cursor_right() end'';
      }
      {
        __unkeyed-1 = "<C-Up>";
        __unkeyed-2.__raw = ''function() require("smart-splits").move_cursor_up() end'';
      }
      {
        __unkeyed-1 = "<C-Down>";
        __unkeyed-2.__raw = ''function() require("smart-splits").move_cursor_down() end'';
      }
    ];
    settings.default_amount = 1;
  };
}
