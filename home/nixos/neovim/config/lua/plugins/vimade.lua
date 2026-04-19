return {
    "tadaa/vimade",
    event = "BufReadPre",
    opts = {
        recipe = { "default", { animate = true } },
        fadelevel = 0.4,
        blocklist = {
            function(window, active)
                return active.buf_opts.buftype ~= "terminal" and window.buf_opts.ft == "leaninfo"
            end,
        },
    },
}
