local notify = {
    "rcarriga/nvim-notify",
    opts = {
        fps = 60,
    },
}

return {
    "folke/noice.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        notify,
    },
    event = "VeryLazy",
    opts = {
        presets = {
            lsp_doc_border = true,
        },
        lsp = {
            hover = {
                silent = true,
                opts = {
                    size = {
                        width = 40,
                    },
                },
            },
        },
    },
}
