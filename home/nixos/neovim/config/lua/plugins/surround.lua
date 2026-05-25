---@type lze.PluginSpec
return {
    "nvim-surround",
    event = "BufReadPre",
    after = function() require("nvim-surround").setup() end,
}
