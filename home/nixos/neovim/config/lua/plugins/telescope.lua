return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            { mode = "n" },
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            { mode = "n" },
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            { mode = "n" },
        },
        {
            "<leader>fh",
            function()
                require("telescope.builtin").help_tags()
            end,
            { mode = "n" },
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        defaults = {
            prompt_prefix = "❯ ",
        },
    },
}
