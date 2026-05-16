local options = {
    number = true,
    relativenumber = true,
    cursorline = true,
    mouse = "",
    wrap = false,
    list = true,
    listchars = {
        tab = "──",
        trail = "·",
    },
    fillchars = {
        eob = " ",
        fold = " ",
        foldclose = "",
        foldopen = "",
        foldsep = " ",
        foldinner = " ",
    },
    laststatus = 3,
    signcolumn = "yes",
    termguicolors = true,
}

local globals = {
    mapleader = " ",
    maplocalleader = [[\]],
}

for name, value in pairs(options) do
    vim.opt[name] = value
end

for name, value in pairs(globals) do
    vim.g[name] = value
end

vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldopen = "search,tag"
vim.o.winborder = "rounded"
