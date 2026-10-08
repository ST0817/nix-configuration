---@type lze.PluginSpec
return {
    "nvim-dap",
    dep_of = "nvim-dap-view",
    after = function()
        local dap = require "dap"
        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "-i", "dap" },
        }
        dap.configurations.asm = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input {
                        prompt = "Path to executable",
                        completion = "file",
                    }
                end,
            },
        }
        dap.configurations.c = {
            {
                name = "Launch",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input {
                        prompt = "Path to executable",
                        completion = "file",
                    }
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            },
        }
    end,
}
