require('kommentary.config').use_extended_mappings()

vim.api.nvim_set_keymap("n", "<leader>99", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>9", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("x", "<leader>9", "<Plug>kommentary_visual_default", {})
