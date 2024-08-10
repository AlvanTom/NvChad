local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettier
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier
    },
    svelte = {
      require("formatter.filetypes.svelte").prettier
    },
    html = {
      require("formatter.filetypes.html").prettier
    },
    css = {
      require("formatter.filetypes.css").prettier
    },
    c = {
      require("formatter.filetypes.c").clangformat
    },
    cpp= {
      require("formatter.filetypes.cpp").clangformat
    },
    lua = {
      require("formatter.filetypes.lua").stylua
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

return M
