require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
  format_on_save={
    timeout_ms=500,
    lsp_fallback=true,
  },
  vim.keymap.set({"n", "v"}, "<leader>l", function()
    conform.format({
      lsp_fallback=true,
      async=false,
      timeout_ms=500,
    })
  end, { desc="Format file or range (in visual mode)" })
})
