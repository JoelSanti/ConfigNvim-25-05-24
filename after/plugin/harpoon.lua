-- Harpoon setup
require("harpoon").setup({
  menu = {
    width = 80,
  }
})

-- Key mappings
vim.api.nvim_set_keymap('n', '<leader>a', ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>1', ":lua require('harpoon.ui').nav_file(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', ":lua require('harpoon.ui').nav_file(2)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', ":lua require('harpoon.ui').nav_file(3)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', ":lua require('harpoon.ui').nav_file(4)<CR>", { noremap = true, silent = true })
