---@type lze.PluginSpec
return {
    "noice.nvim",
    event = "VimEnter",
    after = function()
        require("noice").setup {
            presets = {
                lsp_doc_border = true,
                inc_rename = true,
            },
            messages = {
                view = "mini",
                view_error = "mini",
                view_warn = "mini",
            },
            cmdline = {
                format = {
                    cmdline = { icon = "❯" },
                    lua = { pattern = { "^:%s*lua%s" } },
                    lua_assign = {
                        pattern = { "^:%s*lua%s*=%s", "^:%s*=%s" },
                        icon = " =",
                        lang = "lua",
                    },
                    help = { pattern = { "^:%s*h%s", "^:%s*help%s" } },
                    replace = {
                        pattern = ":%s*%%s",
                    },
                    IncRename = { view = "cmdline_popup" },
                },
            },
            lsp = { signature = { auto_open = { enabled = false } } },
        }
    end,
}
