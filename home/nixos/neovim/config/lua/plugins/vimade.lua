---@type lze.PluginSpec
return {
    "vimade",
    event = { "WinEnter", "WinNewPre" },
    after = function()
        require("vimade").setup {
            recipe = {
                "default",
                { animate = true },
            },
            fadelevel = 0.4,
            ncmode = "windows",
            blocklist = {
                lean = function(window, active)
                    return active.buf_opts.ft == "lean" and window.buf_opts.ft == "leaninfo"
                end,
                lspsaga_rename = function(_, active) return active.buf_opts.ft == "sagarename" end,
                dap_ui = function(window, active)
                    return active.buf_opts.ft == "dapui_watches"
                        or active.buf_opts.ft == "dapui_stacks"
                        or active.buf_opts.ft == "dapui_breakpoints"
                        or active.buf_opts.ft == "dapui_scopes"
                        or active.buf_opts.ft == "dapui_console"
                        or active.buf_opts.ft == "dap-repl"
                        or window.buf_opts.ft == "dapui_watches"
                        or window.buf_opts.ft == "dapui_stacks"
                        or window.buf_opts.ft == "dapui_breakpoints"
                        or window.buf_opts.ft == "dapui_scopes"
                        or window.buf_opts.ft == "dapui_console"
                        or window.buf_opts.ft == "dap-repl"
                end,
            },
        }
    end,
}
