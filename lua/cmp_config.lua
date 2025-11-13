local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            -- You can use LuaSnip here if installed
            -- require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },  -- LSP suggestions
        { name = "buffer" },    -- words in buffer
        { name = "path" },      -- file paths
    })
})
