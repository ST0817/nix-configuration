---@type lze.PluginSpec
return {
    "smart-splits.nvim",
    keys = {
        { "<A-Right>", "<CMD>SmartResizeRight<CR>", desc = "SmartResizeRight" },
        { "<A-Left>", "<CMD>SmartResizeLeft<CR>", desc = "SmartResizeLeft" },
        { "<A-Up>", "<CMD>SmartResizeUp<CR>", desc = "SmartResizeUp" },
        { "<A-Down>", "<CMD>SmartResizeDown<CR>", desc = "SmartResizeDown" },
        { "<C-Right>", "<CMD>SmartCursorMoveRight<CR>", desc = "SmartCursorMoveRight" },
        { "<C-Left>", "<CMD>SmartCursorMoveLeft<CR>", desc = "SmartCursorMoveLeft" },
        { "<C-Up>", "<CMD>SmartCursorMoveUp<CR>", desc = "SmartCursorMoveUp" },
        { "<C-Down>", "<CMD>SmartCursorMoveDown<CR>", desc = "SmartCursorMoveDown" },
    },
    after = function()
        ---@diagnostic disable-next-line: missing-fields
        require("smart-splits").setup {}
    end,
}
