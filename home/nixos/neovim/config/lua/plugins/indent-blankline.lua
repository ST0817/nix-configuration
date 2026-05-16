return {
    "indent-blankline.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    after = function()
        require("ibl").setup {
            indent = { char = "│" },
            scope = {
                enabled = true,
                highlight = "Blue",
                show_start = false,
                show_end = false,
            },
        }
    end,
}
