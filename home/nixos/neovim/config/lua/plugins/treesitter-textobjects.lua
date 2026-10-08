---@type lze.PluginSpec
return {
    "nvim-treesitter-textobjects",
    event = { "BufReadPre", "WinNewPre" },
    after = function()
        require("nvim-treesitter-textobjects").setup {
            textobjects = {
                select = {
                    enable = true,
                    keymaps = {
                        ["aa"] = "@parameter.outer",
                        ["ia"] = "@parameter.inner",
                    },
                },
            },
        }
    end,
}
