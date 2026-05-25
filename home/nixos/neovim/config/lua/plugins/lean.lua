---@type lze.PluginSpec
return {
    "lean.nvim",
    event = {
        "BufReadPre *.lean",
        "BufNewFile *.lean",
    },
    after = function()
        require("lean").setup {
            mappings = true,
            infoview = { autoopen = false },
        }

        local highlight_overrides = {
            leanInfoDiffWasChanged = { link = "Normal" },
        }
        for name, value in pairs(highlight_overrides) do
            vim.api.nvim_set_hl(0, name, value)
        end
    end,
}
