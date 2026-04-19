return {
    "FotiadisM/tabset.nvim",
    event = "BufReadPre",
    opts = {
        defaults = {
            tabwidth = 4,
            expandtab = true,
        },
        languages = {
            {
                filetypes = {
                    "nix",
                    "yaml",
                    "haskell",
                    "lean",
                },
                config = {
                    tabwidth = 2,
                },
            },
        },
    },
}
