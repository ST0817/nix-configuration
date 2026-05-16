local neoscroll

local move_up = function()
    neoscroll.ctrl_u { duration = 250 }
end

local move_down = function()
    neoscroll.ctrl_d { duration = 250 }
end

local scroll_up = function()
    neoscroll.scroll(-0.1, {
        move_cursor = false,
        duration = 100,
    })
end

local scroll_down = function()
    neoscroll.scroll(0.1, {
        move_cursor = false,
        duration = 100,
    })
end

return {
    "neoscroll.nvim",
    keys = {
        { "<C-[>", move_up },
        { "<C-]>", move_down },
        { "{", scroll_up },
        { "}", scroll_down },
    },
    after = function()
        neoscroll = require "neoscroll"
        neoscroll.setup { mappings = {} }
    end,
}
