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
    ["<C-d>"] = {
        function(cmp) return cmp.is_documentation_visible() and cmp.hide_documentation() or cmp.show_documentation() end,
        "fallback",
    },
    ["<C-Up>"] = { "scroll_documentation_up", "fallback" },
    ["<C-Down>"] = { "scroll_documentation_down", "fallback" },
    ["<C-]>"] = { "snippet_forward", "fallback" },
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
                    auto_show = true,
                    border = "rounded",
                    draw = {
                        components = {
                            label = {
                                text = function(ctx) return require("colorful-menu").blink_components_text(ctx) end,
                                highlight = function(ctx)
                                    return require("colorful-menu").blink_components_highlight(ctx)
                                end,
                            },
                        },
                    },
                },
                ghost_text = { enabled = true, show_with_menu = true },
                documentation = {
                    window = { border = "rounded" },
                },
            },
            keymap = keymap,
            cmdline = {
                enabled = true,
                completion = {
                    list = { selection = { auto_insert = false } },
                    menu = { auto_show = true },
                    ghost_text = { enabled = true },
                },
                keymap = keymap,
            },
        }
    end,
}
