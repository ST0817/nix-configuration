return {
    "lean.nvim",
    event = {
        "BufReadPre *.lean",
        "BufNewFile *.lean",
    },
    after = function()
        require("lean").setup {
            mappings = true,
            infoview = { autoopen = false },
        }
    end,
}
