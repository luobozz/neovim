-- Add additional capabilities supported by nvim-cmp
local default_capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require('lspconfig')
require("mason").setup()
require("mason-lspconfig").setup()

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {'pyright', 'lua_ls', 'tsserver','volar', 'eslint'}
local serversSetting = {'pyright', 'tsserver', 'sumneko_lua'}
for _, lsp in ipairs(servers) do
    local module = "config.lsp.settings." .. serversSetting[_]
    local ok, moduleSettings = pcall(require, module)
    local settings = {}
    local capabilities = default_capabilities
    if ok then
        settings = moduleSettings.settings
        capabilities = moduleSettings.capcapabilities
    else
        -- print("Error loading " .. module .. "\n\n")
    end
    lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = default_capabilities
    }
end
