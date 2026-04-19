return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    keys = {
        { "<Leader>ft", "<CMD>Neotree toggle<CR>", mode = "n" },
    },
    opts = {
        popup_border_style = "rounded",
    },
}
