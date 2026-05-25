---@type lze.PluginSpec
return {
    "nvim-treesitter",
    event = "BufReadPre",
    after = function()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                local ok = pcall(vim.treesitter.start)
                if ok then vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" end
            end,
        })
    end,
}
