---@type lze.PluginSpec
return {
    "conform.nvim",
    event = "BufWritePre",
    after = function()
        require("conform").setup {
            formatters_by_ft = {
                nix = { "nixfmt" },
                lua = { "stylua" },
                json = { "jq" },
                toml = { "taplo" },
                rust = { "rustfmt" },
                typst = { "typstyle" },
                cmake = { "cmake-format" },
            },
            format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 500,
            },
        }
    end,
}
