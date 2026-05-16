return {
    "conform.nvim",
    event = "BufWritePre",
    after = function()
        require("conform").setup {
            formatters_by_ft = {
                nix = { "nixfmt" },
                lua = { "stylua" },
                rust = { "rustfmt" },
            },
            format_on_save = true,
        }
    end,
}
