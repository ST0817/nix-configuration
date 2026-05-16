return {
    "nvim-lsp-file-operations",
    dep_of = "neo-tree.nvim",
    after = function()
        require("lsp-file-operations").setup()
    end,
}
