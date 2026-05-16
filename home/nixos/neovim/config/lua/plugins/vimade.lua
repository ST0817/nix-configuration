return {
    "vimade",
    event = { "WinEnter", "WinNewPre" },
    after = function()
        require("vimade").setup {
            recipe = {
                "default",
                { animate = true },
            },
            ncmode = "windows",
            blocklist = {
                function(window, active)
                    return active.buf_opts.buftype ~= "terminal" and window.buf_opts.ft == "leaninfo"
                end,
            },
        }
    end,
}
