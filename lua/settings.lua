-- Absolute line number for current line
vim.opt.number = true

-- relative numbers for all other lines
vim.opt.relativenumber = true

-- Configure diagnostics
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",          -- symbol before text
        spacing = 2,
        -- align to the right side of the window
        align = "right",
    },
    signs = true,             -- keep signs in gutter
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

