local keymaps = {
    { key = "<Leader>w", action = vim.cmd.write, opts = { desc = ":write" } },
    { key = "<Leader>q", action = vim.cmd.quit, opts = { desc = "quit" } },
    { key = "<Leader>;", action = "mmA;<ESC>`m", opts = { desc = "Insert trailing semicolon in normal mode" } },
    {
        mode = "i",
        key = "<A-;>",
        action = "<ESC>mmA;<ESC>`ma",
        opts = { desc = "Insert trailing semicolon in insert mode" },
    },
    { key = "<Leader>,", action = "mmA,<ESC>`m", opts = { desc = "Insert trailing comma in normal mode" } },
    {
        mode = "i",
        key = "<A-,>",
        action = "<ESC>mmA,<ESC>`ma",
        opts = { desc = "Insert trailing comma in insert mode" },
    },
    --{ key = "{", action = "<C-b>" },
    --{ key = "}", action = "<C-f>" },
    { key = "_", action = "zz" },
}

for _, keymap in ipairs(keymaps) do
    vim.keymap.set(keymap.mode or "n", keymap.key, keymap.action, keymap.opts)
end
