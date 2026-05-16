return {
    "gruvbox-material.nvim",
    event = "VimEnter",
    after = function()
        vim.cmd.colorscheme "gruvbox-material"

        local overrides = {
            Pmenu = { link = "Normal" },
            PmenuExtra = { link = "Normal" },
            NormalFloat = { link = "Normal" },
            ErrorFloat = { link = "Error" },
            BlueSign = { link = "Blue" },
            GreenSign = { link = "Green" },
        }

        for name, value in pairs(overrides) do
            vim.api.nvim_set_hl(0, name, value)
        end
    end,
}
