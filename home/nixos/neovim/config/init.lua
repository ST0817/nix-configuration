require "options"
require "keymaps"
require "colorscheme"
require "diagnostic"

require("lze").load {
    require "plugins.treesitter",
    require "plugins.snacks",
    require "plugins.lualine",
    require "plugins.noice",
    require "plugins.yanky",
    require "plugins.blink",
    require "plugins.lspconfig",
    require "plugins.lspsaga",
    require "plugins.conform",
    require "plugins.inc-rename",
    require "plugins.ufo",
    require "plugins.ultimate-autopair",
    require "plugins.bufferline",
    require "plugins.vimade",
    require "plugins.smart-splits",
    require "plugins.neoscroll",
    require "plugins.surround",
    require "plugins.lean",
}
