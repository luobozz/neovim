local status, mason = pcall(require, "mason")
if not status then
  vim.notify("没有找到 mason")
  return
end

local status, mason_config = pcall(require, "mason-lspconfig")
if not status then
  vim.notify("没有找到 mason-lspconfig")
  return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("没有找到 lspconfig")
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  }
})

-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
local servers = {
  "lua_ls",
  "volar",
  "eslint",
  "stylelint_lsp",
  "tsserver",
  "tailwindcss",
  "bashls",
  "cssls",
  "dockerls",
  "emmet_ls",
  "html",
  "jsonls",
  "pyright",
  "rust_analyzer",
  "taplo",
  "yamlls",
  -- "gopls",
  -- "clangd",
  -- "cmake",
  "remark_ls",
}
mason_config.setup({
  ensure_installed = servers,
})

-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local common = require("config.lsp.common")
for index, name in pairs(servers) do
  local module = "config.lsp.settings." .. name
  local ok, moduleSettings = pcall(require, module)
  local setting = {}
  local capabilities = common.capabilities
  local flags = common.flags
  local on_attach = function(client, bufnr)
    -- common.disableFormat(client)
    common.keyAttach(client)
  end
  if ok and moduleSettings ~= nil and type(moduleSettings) == "table" then
    if ok and moduleSettings.settings ~= nil and type(moduleSettings.settings) == "table" then
      setting = moduleSettings.settings
    end
    if ok and moduleSettings.capabilities ~= nil and type(moduleSettings.capabilities) == "table" then
      capabilities = moduleSettings.capabilities
    end
    if ok and moduleSettings.flags ~= nil and type(moduleSettings.flags) == "table" then
      flags = moduleSettings.flags
    end
    if ok and moduleSettings.on_attach ~= nil and type(moduleSettings.on_attach) == "function" then
      on_attach = function(client, bufnr)
        -- common.disableFormat(client)
        common.keyAttach(client)
        moduleSettings.on_attach(client, bufnr)
      end
    end
  end
  lspconfig[name].setup({
    setting = setting,
    capabilities = capabilities,
    flags = flags,
    on_attach = on_attach
  })
end
