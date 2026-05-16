return {
    "smart-splits.nvim",
    keys = {
        { "<A-Right>", "<CMD>SmartResizeRight<CR>" },
        { "<A-Left>", "<CMD>SmartResizeLeft<CR>" },
        { "<A-Up>", "<CMD>SmartResizeUp<CR>" },
        { "<A-Down>", "<CMD>SmartResizeDown<CR>" },
        { "<C-Right>", "<CMD>SmartCursorMoveRight<CR>" },
        { "<C-Left>", "<CMD>SmartCursorMoveLeft<CR>" },
        { "<C-Up>", "<CMD>SmartCursorMoveUp<CR>" },
        { "<C-Down>", "<CMD>SmartCursorMoveDown<CR>" },
    },
    after = function()
        require("smart-splits").setup {}
    end,
}
