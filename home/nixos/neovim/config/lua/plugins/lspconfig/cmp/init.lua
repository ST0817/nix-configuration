local cmdline = {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
}

local lazydev = {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
        library = {
            "lazy.nvim",
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
    },
}

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "FelipeLema/cmp-async-path",
        "onsails/lspkind.nvim",
        cmdline,
        lazydev,
    },
    opts = function(_, opts)
        local cmp = require "cmp"

        opts.preselect = cmp.PreselectMode.None

        opts.sources = {
            { name = "nvim_lsp" },
            { name = "async_path" },
        }

        opts.window = {
            completion = cmp.config.window.bordered {
                border = "rounded",
            },
            documentation = cmp.config.window.bordered {
                border = "rounded",
            },
        }

        opts.formatting = {
            fields = { "abbr", "icon" },
        }

        opts.mapping = {
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() and not cmp.get_selected_entry() then
                    cmp.select_next_item {
                        behavior = cmp.SelectBehavior.Select,
                    }
                else
                    fallback()
                end
            end, { "i", "c" }),
            ["<Down>"] = cmp.mapping(function(fallback)
                if cmp.visible() and cmp.get_selected_entry() then
                    if cmp.get_selected_index() < #cmp.get_entries() then
                        cmp.select_next_item {
                            behavior = cmp.SelectBehavior.Select,
                        }
                    end
                else
                    fallback()
                end
            end, { "i", "c" }),
            ["<Up>"] = cmp.mapping(function(fallback)
                if cmp.visible() and cmp.get_selected_entry() then
                    if cmp.get_selected_index() > 1 then
                        cmp.select_prev_item {
                            behavior = cmp.SelectBehavior.Select,
                        }
                    end
                else
                    fallback()
                end
            end, { "i", "c" }),
            ["<CR>"] = cmp.mapping(function(fallback)
                if cmp.visible() and cmp.get_selected_entry() then
                    cmp.confirm()
                else
                    fallback()
                end
            end, { "i", "c" }),
            ["<C-d>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.scroll_docs(4)
                else
                    fallback()
                end
            end, { "i" }),
            ["<C-u>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.scroll_docs(-4)
                else
                    fallback()
                end
            end, { "i" }),
            ["<C-q>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.close()
                else
                    fallback()
                end
            end, { "i", "c" }),
        }

        cmp.setup.cmdline(":", {
            sources = cmp.config.sources({
                { name = "async_path" },
            }, {
                { name = "cmdline" },
            }),
        })
    end,
}
