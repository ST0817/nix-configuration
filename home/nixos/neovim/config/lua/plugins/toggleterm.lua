local toggle_lazygit = function()
    require("toggleterm.terminal").Terminal
        :new({
            cmd = "lazygit",
            direction = "tab",
        })
        :toggle()
end

local toggle_hextazy = function()
    local path = vim.fn.expand "%:p"

    if not path then
        return
    end

    require("toggleterm.terminal").Terminal
        :new({
            cmd = "hextazy " .. path,
            direction = "tab",
        })
        :toggle()
end

return {
    "toggleterm.nvim",
    keys = {
        { "<C-t>", vim.cmd.ToggleTerm, mode = { "n", "t" } },
        { "<Leader>g", toggle_lazygit },
        { "<Leader>h", toggle_hextazy },
    },
    after = function()
        require("toggleterm").setup {
            direction = "vertical",
            size = vim.o.columns / 2,
            shade_terminals = false,
        }
    end,
}
