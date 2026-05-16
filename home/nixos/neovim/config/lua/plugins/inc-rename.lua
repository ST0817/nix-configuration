local rename = function()
    return ":IncRename " .. vim.fn.expand "<cword>"
end

return {
    "inc-rename.nvim",
    keys = {
        { "grn", rename, expr = true },
    },
    after = function()
        require("inc_rename").setup()
    end,
}
