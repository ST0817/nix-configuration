---@type lze.PluginSpec
return {
    "inc-rename.nvim",
    keys = {
        {
            "grn",
            function()
                ---@diagnostic disable-next-line: redundant-return-value
                return ":IncRename " .. vim.fn.expand "<cword>"
            end,
            expr = true,
            desc = "IncRename",
        },
    },
    after = function() require("inc_rename").setup {} end,
}
