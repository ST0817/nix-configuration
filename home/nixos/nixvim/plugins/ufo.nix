{ ... }:
{
  plugins.nvim-ufo = {
    enable = true;
    lazyLoad.settings = {
      keys = [
        {
          __unkeyed-1 = "zo";
          __unkeyed-2 = "<CMD>foldopen<CR>";
        }
        {
          __unkeyed-1 = "zc";
          __unkeyed-2 = "<CMD>foldclose<CR>";
        }
        {
          __unkeyed-1 = "zR";
          __unkeyed-2.__raw = ''function() require("ufo").openAllFolds() end'';
        }
        {
          __unkeyed-1 = "zM";
          __unkeyed-2.__raw = ''function() require("ufo").closeAllFolds() end'';
        }
        {
          __unkeyed-1 = "zr";
          __unkeyed-2.__raw = ''function() require("ufo").openFoldsExceptKinds(vim.v.count1) end'';
        }
        {
          __unkeyed-1 = "zm";
          __unkeyed-2.__raw = ''function() require("ufo").closeFoldsWith(vim.v.count1) end'';
        }
        {
          __unkeyed-1 = "K";
          __unkeyed-2.__raw = ''
            function()
                local winid = require("ufo").peekFoldedLinesUnderCursor()
                if not winid then
                    vim.lsp.buf.hover()
                end
            end
          '';
        }
      ];
    };
  };
  opts = {
    foldlevelstart = 99;
    foldlevel = 99;
  };
}
