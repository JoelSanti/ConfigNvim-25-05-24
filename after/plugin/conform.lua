require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      svelte = { { "prettierd", "prettier" } },
      javascript = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascriptreact = { { "prettierd", "prettier" } },
      typescriptreact = { { "prettierd", "prettier" } },
      json = { { "prettierd", "prettier" } },
      graphql = { { "prettierd", "prettier" } },
      java = { "google-java-format" },
      kotlin = { "ktlint" },
      markdown = { { "prettierd", "prettier" } },
      html = { { "prettierd", "prettier" } },
      yaml = { "yamlfix" },
      css = { { "prettierd", "prettier" } },
      scss = { { "prettierd", "prettier" } },
    },
  })
  
  vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 500 })<cr>', {noremap = true, silent = true})
  vim.api.nvim_set_keymap('v', '<leader>p', '<cmd>lua require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 500 })<cr>', {noremap = true, silent = true})