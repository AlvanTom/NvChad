local plugins = {
{
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
},
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"html", "css", "javascript", "typescript", "cpp", "svelte"}
    }
  },
  {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
"stylua",
     "prettier",
    "clang-format",
    "css-lsp",
    "html-lsp",
    "lua-language-server",
    "svelte-language-server",
    "typescript-language-server",
      }
    }
  }
}
return plugins
