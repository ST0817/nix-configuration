---@type lze.PluginSpec
return {
    "lualine.nvim",
    event = "VimEnter",
    after = function() require("lualine").setup {} end,
}
