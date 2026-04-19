return {
    "neovim/nvim-lspconfig",
    dependencies = {
        require "plugins.lspconfig.cmp",
    },
    event = "BufReadPre",
    config = function()
        vim.lsp.enable {
            "nixd",
            --"nil_ls",
            "lua_ls",
            "stylua",
            "taplo",
            "ts_ls",
            "rust_analyzer",
            "jdtls",
            "kotlin_language_server",
            "tinymist",
        }
    end,
}
