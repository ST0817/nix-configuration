return {
    "nvim-mini/mini.pairs",
    version = false,
    event = "VeryLazy",
    opts = {
        modes = {
            insert = true,
            command = true,
            terminal = false,
        },
        mappings = {
            [" "] = {
                action = "open",
                pair = "  ",
                neigh_pattern = "[%(%[%{][%)%]%}]",
            },
            ["["] = {
                action = "open",
                pair = "[]",
                neigh_pattern = ".[^%w]",
            },
            ["{"] = {
                action = "open",
                pair = "{}",
                neigh_pattern = ".[^%w]",
            },
            ["("] = {
                action = "open",
                pair = "()",
                neigh_pattern = ".[^%w]",
            },
            ['"'] = {
                action = "closeopen",
                pair = '""',
                neigh_pattern = "[^%w\\][^%w]",
            },
            ["'"] = {
                action = "closeopen",
                pair = "''",
                neigh_pattern = "[^%w\\<][^%w]",
            },
            ["`"] = {
                action = "closeopen",
                pair = "``",
                neigh_pattern = "[^%w\\][^%w]",
            },
        },
    },
}
