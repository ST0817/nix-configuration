return {
    "nvim-scrollbar",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    after = function()
        require("scrollbar").setup()
    end,
}
