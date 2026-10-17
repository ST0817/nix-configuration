---@type lze.PluginSpec
return {
    "nvim-dap-ui",
    keys = {
        { "<F5>", "<cmd>DapContinue<cr>", desc = "DAP continue" },
        { "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "DAP toggle breakpoint" },
        { "<F10>", "<cmd>DapStepOver<cr>", desc = "DAP step over" },
        { "<F11>", "<cmd>DapStepInto<cr>", desc = "DAP step into" },
        { "<F23>", "<cmd>DapStepOut<cr>", desc = "DAP step out" },
    },
    after = function()
        local dapui = require "dapui"
        dapui.setup {
            layouts = {
                {
                    elements = {
                        { id = "scopes", size = 0.5 },
                        { id = "watches", size = 0.5 },
                    },
                    position = "left",
                    size = 40,
                },
                {
                    elements = {
                        { id = "repl", size = 0.5 },
                        { id = "console", size = 0.5 },
                    },
                    position = "bottom",
                    size = 15,
                },
            },
        }
        local dap = require "dap"
        dap.listeners.before.attach.dapui_config = dapui.open
        dap.listeners.before.launch.dapui_config = dapui.open
        dap.listeners.before.event_terminated.dapui_config = dapui.close
        dap.listeners.before.event_exited.dapui_config = dapui.close

        local default_watches = {
            "*(void**)$rsp@16",
        }
        local default_registered = false
        dap.listeners.after.event_initialized["default_watches"] = function()
            if default_registered then return end
            default_registered = true
            for _, expr in ipairs(default_watches) do
                dapui.elements.watches.add(expr)
            end
        end
    end,
}
