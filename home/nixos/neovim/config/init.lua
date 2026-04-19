local opts = {
    number = true,
    relativenumber = true,
    cursorline = true,
    --tabstop = 4,
    shiftwidth = 0,
    softtabstop = 0,
    --expandtab = true,
    shiftround = true,
    mouse = "",
    wrap = false,
    list = true,
    listchars = {
        tab = "──",
        trail = "·",
    },
    signcolumn = "yes",
    termguicolors = true,
    guicursor = "i:block",
}

for key, value in pairs(opts) do
    vim.opt[key] = value
end

local keymaps = {
    { modes = "n", key = "<Leader>w", cmd = vim.cmd.write, opts = { desc = ":write" } },
    { modes = "n", key = "<Leader>q", cmd = vim.cmd.quit, opts = { desc = ":quit" } },
    {
        modes = "n",
        key = "gd",
        cmd = vim.diagnostic.open_float,
        opts = { desc = "Show diagnostics in a floating window." },
    },
}

vim.g.mapleader = " "
vim.g.maplocalleader = "  "

for _, keymap in ipairs(keymaps) do
    vim.keymap.set(keymap.modes, keymap.key, keymap.cmd)
end

vim.diagnostic.config {
    float = {
        border = "rounded",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "󰀪",
            [vim.diagnostic.severity.INFO] = "",
            [vim.diagnostic.severity.HINT] = "",
        },
    },
}

require "plugins"
