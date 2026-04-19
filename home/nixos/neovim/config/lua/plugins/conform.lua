return {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            typst = { "typstyle" },
        },
        format_after_save = {
            lsp_fallback = true,
        },
    },
}
