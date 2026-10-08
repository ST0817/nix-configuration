---@type lze.PluginSpec
return {
    "nvim-dap-view",
    keys = {
        { "<F5>", "<cmd>DapContinue<cr>", desc = "dap continue" },
        { "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "dap toggle breakpoint" },
        { "<F10>", "<cmd>DapStepOver<cr>", desc = "dap step over" },
        { "<F11>", "<cmd>DapStepInto<cr>", desc = "dap step into" },
        { "<leader>ds", "<cmd>DapViewShow scopes<cr>", desc = "dap step over" },
        { "<leader>dr", "<cmd>DapViewShow repl<cr>", desc = "dap step over" },
    },
    after = function()
        require("dap-view").setup {
            windows = {
                size = 0.5,
                position = "right",
            },
            auto_toggle = true,
            winbar = {
                show = false,
                default_section = "scopes",
            },
        }
    end,
}
