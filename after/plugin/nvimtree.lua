    local keymap = vim.api.nvim_set_keymap
    local nores = { noremap = true, silent = true }
    keymap("n", "<leader>ef", "<cmd>NvimTreeToggle<cr><cmd>NvimTreeResize 50<cr>", nores)
require('nvim-tree').setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

