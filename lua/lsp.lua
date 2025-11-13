-- Setup Mason
require("mason").setup()

-- Setup Mason-LSPConfig
local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
    ensure_installed = { "gopls", "lua_ls", "omnisharp", "pyright", "vtsls" },
    automatic_installation = true,
})

-- Setup LSP servers using modern vim.lsp.config API
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Special configurations for specific servers
local server_configs = {
    lua_ls = {
        capabilities = capabilities,
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },  -- Recognize 'vim' global
                },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    },
    omnisharp = {
        capabilities = capabilities,
        cmd = { "omnisharp" },
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
    },
}

-- Automatically setup all installed servers
for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
    local config = server_configs[server_name] or { capabilities = capabilities }
    vim.lsp.config(server_name, config)
end
