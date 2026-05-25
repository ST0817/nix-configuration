local ufo

local closeAllFolds = function() ufo.closeAllFolds() end

local peekFoldedLinesUnderCursor = function()
    local winid = ufo.peekFoldedLinesUnderCursor()
    if not winid then vim.cmd.Lspsaga "hover_doc" end
end

---@param bufnr number
---@param startLnum number
---@param endLnum number
---@return table
local count_diagnostics = function(bufnr, startLnum, endLnum)
    local counts = {
        [vim.diagnostic.severity.ERROR] = {
            count = 0,
            sign_highlight = "DiagnosticSignError",
            text_highlight = "DiagnosticError",
        },
        [vim.diagnostic.severity.WARN] = {
            count = 0,
            sign_highlight = "DiagnosticSignWarn",
            text_highlight = "DiagnosticWarn",
        },
        [vim.diagnostic.severity.INFO] = {
            count = 0,
            sign_highlight = "DiagnosticSignInfo",
            text_highlight = "DiagnosticInfo",
        },
        [vim.diagnostic.severity.HINT] = {
            count = 0,
            sign_highlight = "DiagnosticSignHint",
            text_highlight = "DiagnosticHint",
        },
    }
    local diagnostics = vim.diagnostic.get(bufnr, { lnum = nil })

    for _, diagnostic in ipairs(diagnostics) do
        if diagnostic.lnum >= startLnum and diagnostic.lnum <= endLnum then
            counts[diagnostic.severity].count = counts[diagnostic.severity].count + 1
        end
    end

    return counts
end

---@param lnum number
---@param endLnum number
---@param ctx UfoFoldVirtTextHandlerContext
---@return UfoExtmarkVirtTextChunk
local make_suffix = function(lnum, endLnum, ctx)
    local suffix = {
        { (" 󰁂 %d"):format(endLnum - lnum), "MoreMsg" },
    }

    for severity, info in ipairs(count_diagnostics(ctx.bufnr, lnum - 1, endLnum - 1)) do
        if info.count > 0 then
            local icon = vim.diagnostic.config().signs.text[severity]
            table.insert(suffix, { (" %s"):format(icon), info.sign_highlight })
            table.insert(suffix, { (" %d"):format(info.count), info.text_highlight })
        end
    end

    return suffix
end

---@param suffix UfoExtmarkVirtTextChunk
---@return integer
local suffix_width = function(suffix)
    local width = 0

    for _, chunk in ipairs(suffix) do
        width = width + vim.fn.strdisplaywidth(chunk[1])
    end

    return width
end

---@type UfoFoldVirtTextHandler
local fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate, ctx)
    local newVirtText = {}
    local suffix = make_suffix(lnum, endLnum, ctx)
    local suffixWidth = suffix_width(suffix)
    local targetWidth = width - suffixWidth
    local curWidth = 0

    for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)

        if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
        else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, { chunkText, hlGroup })
            chunkWidth = vim.fn.strdisplaywidth(chunkText)

            if curWidth + chunkWidth < targetWidth then
                suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
            end

            break
        end

        curWidth = curWidth + chunkWidth
    end

    vim.list_extend(newVirtText, suffix)

    return newVirtText
end

---@type lze.PluginSpec
return {
    "nvim-ufo",
    event = "VimEnter",
    keys = {
        { "<Tab>", vim.cmd.foldopen, desc = "foldoopen" },
        { "<S-Tab>", vim.cmd.foldclose, desc = "foldclose" },
        { "<Leader><Tab>", closeAllFolds, desc = "closeAllFolds" },
        { "K", peekFoldedLinesUnderCursor, desc = "peek fold" },
    },
    after = function()
        ufo = require "ufo"
        ufo.setup {
            provider_selector = function() return { "treesitter", "indent" } end,
            fold_virt_text_handler = fold_virt_text_handler,
        }
    end,
}
