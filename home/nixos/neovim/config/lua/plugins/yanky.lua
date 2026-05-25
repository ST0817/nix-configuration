---@type lze.PluginSpec
return {
    "yanky.nvim",
    keys = {
        {
            "<Leader>fy",
            function()
                ---@diagnostic disable-next-line: undefined-field
                Snacks.picker.yanky()
            end,
            desc = "Open Yank History",
        },
    },
    after = function()
        require("yanky").setup {
            highlight = { on_yank = false },
        }
    end,
}
