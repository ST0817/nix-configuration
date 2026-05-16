return {
    "telescope.nvim",
    keys = {
        { "<Leader>ff", "<CMD>Telescope find_files<CR>" },
        { "<Leader>fg", "<CMD>Telescope live_grep<CR>" },
        { "<Leader>fh", "<CMD>Telescope help_tags<CR>" },
        { "<Leader>fn", "<CMD>Telescope notify<CR>" },
        { "<Leader>fk", "<CMD>Telescope keymaps<CR>" },
        { "<Leader>fb", "<CMD>Telescope buffers<CR>" },
        { "<Leader>fl", "<CMD>Telescope highlights<CR>" },
    },
    after = function()
        require("telescope").setup {
            defaults = { prompt_prefix = "❯ " },
        }
    end,
}
