---@type blink.cmp.KeymapConfig
local keymap = {
    preset = "none",
    ["<S-Tab>"] = {
        function(cmp) return cmp.is_menu_visible() and cmp.hide() or cmp.show() end,
        "fallback",
    },
    ["<Tab>"] = { "accept", "fallback" },
    ["<Down>"] = {
        function(cmp)
            return cmp.is_menu_visible() and cmp.get_selected_item_idx() == #cmp.get_items() or cmp.select_next()
        end,
        "fallback",
    },
    ["<Up>"] = {
        function(cmp) return cmp.is_menu_visible() and cmp.get_selected_item_idx() == 1 or cmp.select_prev() end,
        "fallback",
    },
    ["<C-Up>"] = { "scroll_documentation_up", "fallback" },
    ["<C-Down>"] = { "scroll_documentation_down", "fallback" },
}

---@type lze.PluginSpec
return {
    "blink.cmp",
    event = { "BufReadPre", "CmdlineEnter" },
    after = function()
        vim.lsp.enable {
            "nixd",
            "lua_ls",
            "jsonls",
            "taplo",
            "rust_analyzer",
            "tinymist",
            "asm_lsp",
            "clangd",
            "cmake",
            "asm",
            "nasm",
            "ts_ls",
        }
        require("blink.cmp").setup {
            completion = {
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = false,
                    },
                },
                menu = {
                    auto_show = false,
                    border = "rounded",
                },
                documentation = {
                    auto_show = true,
                    window = { border = "rounded" },
                },
                ghost_text = { enabled = true },
            },
            keymap = keymap,
            cmdline = {
                enabled = true,
                completion = {
                    list = { selection = { auto_insert = false } },
                    menu = { auto_show = false },
                    ghost_text = { enabled = true },
                },
                keymap = keymap,
            },
        }
    end,
}
