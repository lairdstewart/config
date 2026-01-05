local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "tinymist" },
        })
      end,
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
	vim.lsp.enable("tinymist")
      end,
    },
    {
      "stevearc/conform.nvim",
      opts = {
        formatters_by_ft = {
          typst = { "typstyle" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      },
    },
  },
})
