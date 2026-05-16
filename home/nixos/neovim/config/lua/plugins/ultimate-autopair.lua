return {
    "ultimate-autopair.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    after = function()
        require("ultimate-autopair").setup {
            fastwarp = {
                map = "<A-[>",
                rmap = "<A-]>",
                cmap = "<A-[>",
                rcmap = "<A-]>",
            },
        }
    end,
}
