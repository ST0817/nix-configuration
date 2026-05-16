local keymaps = {
    { key = "<Leader>w", action = vim.cmd.write },
    { key = "<Leader>q", action = vim.cmd.quit },
    { key = "<Leader>;", action = "mmA;<ESC>`m" },
    { mode = "i", key = "<A-;>", action = "<ESC>mmA;<ESC>`ma" },
    { key = "<Leader>,", action = "mmA,<ESC>`m" },
    { mode = "i", key = "<A-,>", action = "<ESC>mmA,<ESC>`ma" },
}

for _, keymap in ipairs(keymaps) do
    vim.keymap.set(keymap.mode or "n", keymap.key, keymap.action)
end
