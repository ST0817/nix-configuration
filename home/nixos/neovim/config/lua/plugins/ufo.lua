local ufo

local closeAllFolds = function()
    ufo.closeAllFolds()
end

local peekFoldedLinesUnderCursor = function()
    local winid = ufo.peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end
end

return {
    "nvim-ufo",
    event = "VimEnter",
    keys = {
        { "<Tab>", vim.cmd.foldopen },
        { "<S-Tab>", vim.cmd.foldclose },
        { "<Leader><Tab>", closeAllFolds },
        { "K", peekFoldedLinesUnderCursor },
    },
    after = function()
        ufo = require "ufo"
        ufo.setup {
            provider_selector = function()
                return { "treesitter", "indent" }
            end,
        }
    end,
}
