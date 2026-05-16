local treesitter = {
    "nvim-treesitter",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    after = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "c",
                "lua",
                "markdown",
                "markdown_inline",
                "query",
                "vim",
                "vimdoc",
                "nix",
                "rust",
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}

require("lze").load { treesitter }
