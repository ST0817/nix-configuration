return {
    "clearaspect/onehalf",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "onehalfdark"

        local customizes = {
            DiagnosticUnderlineError = {
                undercurl = true,
            },
            DiagnosticUnderlineWarn = {
                undercurl = true,
            },
        }
        for name, opts in pairs(customizes) do
            local current = vim.api.nvim_get_hl(0, { name = name })
            vim.api.nvim_set_hl(0, name, vim.tbl_extend("force", current, opts))
        end
    end,
}
