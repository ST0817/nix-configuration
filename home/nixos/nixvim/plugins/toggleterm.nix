{ ... }:
{
  plugins.toggleterm = {
    enable = true;
    lazyLoad.settings.keys = [
      {
        __unkeyed-1 = "<C-t>";
        __unkeyed-2 = "<Cmd>ToggleTerm<CR>";
        mode = [
          "n"
          "t"
        ];
      }
      {
        __unkeyed-1 = "<Leader>g";
        __unkeyed-2.__raw = ''
          function()
            require("toggleterm.terminal").Terminal
                :new({
                    cmd = "lazygit",
                    direction = "float",
                    on_create = function()
                        vim.keymap.del("t", "<ESC>")
                    end,
                    on_close = function()
                        vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]])
                    end,
                })
                :toggle()
          end
        '';
        mode = [ "n" ];
      }
      {
        __unkeyed-1 = "<ESC>";
        __unkeyed-2 = ''<C-\><C-n>'';
        mode = [ "t" ];
      }
    ];
  };
}
