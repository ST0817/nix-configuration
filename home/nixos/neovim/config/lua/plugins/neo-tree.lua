return {
    name = "neo-tree.nvim",
    keys = {
        { "<Leader>t", "<CMD>Neotree toggle<CR>" },
    },
    after = function()
        require("neo-tree").setup {
            popup_border_style = "rounded",
        }
    end,
}
