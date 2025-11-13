return require("lazy").setup({
    -- Treesitter for syntax highlighting
    { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },

    -- Mason for LSP/DAP management
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },

    -- LSP configuration
    { "neovim/nvim-lspconfig" },

    -- Completion engine
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },

    -- Colorscheme
    require("color"),

    -- File tree
    require("nvimtree"),

})
