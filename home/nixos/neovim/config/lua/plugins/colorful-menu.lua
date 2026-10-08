---@type lze.PluginSpec
return {
    "colorful-menu.nvim",
    dep_of = "blink.cmp",
    after = function() require("colorful-menu").setup { max_width = 20 } end,
}
