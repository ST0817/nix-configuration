vim.cmd.colorscheme "gruvbox-material"

local overrides = {
    Pmenu = { link = "Normal" },
    PmenuExtra = { link = "Normal" },
    NormalFloat = { link = "Normal" },
    ErrorFloat = { link = "Error" },
    WarningFloat = { link = "Warning" },
    InfoFloat = { link = "Info" },
    HintFloat = { link = "Hint" },
    DiagnosticSignError = { link = "Red" },
    DiagnosticSignWarn = { link = "Yellow" },
    DiagnosticSignInfo = { link = "Blue" },
    DiagnosticSignHint = { link = "Green" },
}

for name, value in pairs(overrides) do
    vim.api.nvim_set_hl(0, name, value)
end
