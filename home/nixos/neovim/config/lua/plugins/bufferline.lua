return {
    "bufferline.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    after = function()
        require("bufferline").setup()
    end,
}
