local toggle_lazygit = function()
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

return {
    "akinsho/toggleterm.nvim",
    keys = {
        { "<C-t>", vim.cmd.ToggleTerm, mode = { "n", "t" } },
        { "<ESC>", [[<C-\><C-n>]], mode = "t" },
        { "<Leader>lg", toggle_lazygit, mode = "n" },
    },
    opts = {
        direction = "horizontal",
    },
}
