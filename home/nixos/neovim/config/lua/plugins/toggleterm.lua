local open_mapping = [[<C-\>]]

local toggle_lazygit = function()
    require("toggleterm.terminal").Terminal
        :new({
            cmd = "lazygit",
            direction = "float",
            hidden = true,
            on_open = function() end,
        })
        :toggle()
end

local toggle_hextazy = function()
    Snacks.picker.files {
        title = "Hextazy",
        confirm = function(self, item)
            self:close()
            local path = vim.fn.fnameescape(vim.fn.fnamemodify(item.file, ":p"))
            require("toggleterm.terminal").Terminal
                :new({
                    cmd = "hextazy " .. path,
                    direction = "float",
                    float_opts = { border = "" },
                    hidden = true,
                    on_open = function()
                        vim.schedule(function() vim.cmd.startinsert() end)
                    end,
                })
                :toggle()
        end,
    }
end

---@type lze.PluginSpec
return {
    "toggleterm.nvim",
    keys = {
        { open_mapping, desc = "Toggle terminal" },
        { "<Leader>gg", toggle_lazygit, desc = "Toggle lazygit" },
        { "<Leader>hx", toggle_hextazy, desc = "Toggle hextazy" },
    },
    after = function()
        require("toggleterm").setup {
            open_mapping = open_mapping,
            on_open = function() vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], { buffer = true }) end,
            direction = "float",
            highlights = {
                Normal = { link = "Normal" },
            },
        }
    end,
}
