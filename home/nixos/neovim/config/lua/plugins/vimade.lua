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
            },
        }
    end,
}
