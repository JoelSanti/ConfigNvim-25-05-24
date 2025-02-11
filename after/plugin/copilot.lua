require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<Tab>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
      javascript = true, -- Enable for JavaScript files
      javascriptreact = true, -- Enable for React (JSX) files
      typescript = true, -- Enable for TypeScript files
      typescriptreact = true, -- Enable for React (TSX) files
      json = true, -- Enable for JSON files
      yaml = true,
      markdown = true,
      help = false,
      gitcommit = true,
      gitrebase = true,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 18.x
  server_opts_overrides = {},
})
