---@type lze.PluginSpec
return {
    "neoscroll.nvim",
    keys = {
        { "{", function() require("neoscroll").ctrl_u { duration = 250 } end, desc = "move up" },
        { "}", function() require("neoscroll").ctrl_d { duration = 250 } end, desc = "move down" },
        {
            "`",
            function()
                require("neoscroll").scroll(-0.1, {
                    move_cursor = false,
                    duration = 100,
                })
            end,
            desc = "scroll up",
        },
        {
            "*",
            function()
                require("neoscroll").scroll(0.1, {
                    move_cursor = false,
                    duration = 100,
                })
            end,
            desc = "scroll down",
        },
    },
    after = function()
        require("neoscroll").setup {
            mappings = {},
            hide_cursor = false,
        }
    end,
}
