---@type lze.PluginSpec
return {
    "lspsaga.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    keys = {
        { "K", "<CMD>Lspsaga hover_doc<CR>", desc = "Lspsaga hover_doc" },
        { "gf", "<CMD>Lspsaga finder<CR>", desc = "Lspsaga finder" },
        { "gra", "<CMD>Lspsaga code_action<CR>", desc = "Lspsaga code_action" },
        { "gd", "<CMD>Lspsaga peek_definition<CR>", desc = "Lspsaga peek_definition" },
        { "gt", "<CMD>Lspsaga peek_type_definition<CR>", desc = "Lspsaga peek_type_definition" },
    },
    after = function()
        require("lspsaga").setup {
            finder = { keys = { toggle_or_open = "<CR>" } },
            hover = { open_browser = "!explorer.exe" },
            definition = { keys = { edit = "<CR>" } },
            symbol_in_winbar = { enable = false },
            ui = { title = false },
        }
    end,
}
