local keymap = {
    preset = "none",
    ["<Tab>"] = {
        function(cmp)
            if cmp.is_visible() then
                if cmp.get_selected_item() then
                    return cmp.accept()
                else
                    return cmp.select_next()
                end
            end
        end,
        "fallback",
    },
    ["<Down>"] = {
        function(cmp)
            if not cmp.get_selected_item() then
                return
            end
            if cmp.get_selected_item_idx() < #cmp.get_items() then
                return cmp.select_next()
            else
                return true
            end
        end,
        "fallback",
    },
    ["<Up>"] = {
        function(cmp)
            if not cmp.get_selected_item() then
                return
            end
            if cmp.get_selected_item_idx() > 1 then
                return cmp.select_prev()
            else
                return true
            end
        end,
        "fallback",
    },
}

return {
    "blink.cmp",
    event = { "BufReadPre", "CmdlineEnter" },
    after = function()
        vim.lsp.enable {
            "nixd",
            "lua_ls",
            "rust_analyzer",
        }
        require("blink.cmp").setup {
            completion = {
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = false,
                    },
                },
                menu = { border = "rounded" },
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
                    list = {
                        selection = {
                            preselect = false,
                            auto_insert = false,
                        },
                    },
                    menu = { auto_show = true },
                },
                keymap = keymap,
            },
        }
    end,
}
