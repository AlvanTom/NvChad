local configs = require "plugins.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "tsserver", "svelte" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["intelephense"].setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    intelephense = {
      stubs = {
        "wordpress",
        "wordpress-globals",
      },
    },
  },
}
