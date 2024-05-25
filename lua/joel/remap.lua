local keymap = vim.api.nvim_set_keymap
local nore = {noremap = true, silent = false}

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- para mover cuando esta el visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- la J se queda en su luegar 
vim.keymap.set("n", "J", "mzJ`z")

-- subir y bajar el cursor siempre al medio 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- al buscar tambien se va a quedar al medio
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- para guardar lo que copiaste y pegaste en el buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

    -- open terminal
keymap("v", "<leader>t", "<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>", nore)
keymap("n", "<leader>t", "<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>", nore)

     -- save and close file
keymap("n", "<leader>wf", "<cmd>w!<cr>", nore)
keymap("n", "<leader>qf", "<cmd>bd!<cr>", nore)

-- guardar y cerrar todos los archivos
keymap("n", "<leader>xc", "<cmd>wa<CR><cmd>qa<CR>", nore)

