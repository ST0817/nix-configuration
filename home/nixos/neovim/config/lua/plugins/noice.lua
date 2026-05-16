return {
    "noice.nvim",
    event = "VimEnter",
    after = function()
        require("noice").setup {
            presets = {
                lsp_doc_border = true,
                inc_rename = true,
            },
            cmdline = {
                view = "cmdline",
                format = {
                    cmdline = { icon = "❯" },
                    lua = { pattern = { "^:%s*lua%s" } },
                    lua_assign = {
                        pattern = { "^:%s*lua%s*=%s", "^:%s*=%s" },
                        icon = " =",
                        lang = "lua",
                    },
                    help = { pattern = { "^:%s*h%s", "^:%s*help%s" } },
                    IncRename = { view = "cmdline_popup" },
                },
            },
        }
    end,
}
