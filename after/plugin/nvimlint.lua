-- Configuración de linters
require('lint').linters_by_ft = {
    markdown = {'vale',},
    typescript = {'eslint_d',},
    javascript = {"eslint_d"},              
    javascriptreact = {"eslint_d"},        
    typescriptreact = {"eslint_d"},
    svelte = {"eslint_d"},
}

-- Creación de autocomandos
vim.api.nvim_exec([[
  augroup Lint
    autocmd!
    autocmd BufEnter,BufWritePost,InsertLeave * lua require('lint').try_lint()
  augroup END
]], false)

-- Configuración de atajo de teclado
vim.api.nvim_set_keymap('n', '<leader>ll', '<cmd>lua require("lint").try_lint()<cr>', {noremap = true, silent = true})