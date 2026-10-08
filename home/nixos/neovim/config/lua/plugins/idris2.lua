---@type lze.PluginSpec
return {
    "idris2-nvim",
    ft = "idris2",
    after = function() require("idris2").setup {} end,
}
