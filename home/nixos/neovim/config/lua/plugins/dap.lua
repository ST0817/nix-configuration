---@type lze.PluginSpec
return {
    "nvim-dap",
    dep_of = "nvim-dap-ui",
    after = function()
        local dap = require "dap"
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "-i", "dap" },
        }
        local gdb_launch = {
            name = "Launch",
            type = "gdb",
            request = "launch",
            program = function()
                local path = vim.fn.input {
                    prompt = "Path to executable",
                    completion = "file",
                }
                return (path and path ~= "") and path or dap.ABORT
            end,
        }
        dap.configurations.asm = { gdb_launch }
        dap.configurations.vmasm = { gdb_launch }
        dap.configurations.c = { gdb_launch }
    end,
}
