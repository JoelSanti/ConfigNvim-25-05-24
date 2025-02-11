-- cursor gordo
vim.opt.guicursor = ""

-- numeros relativos
vim.opt.nu = true
vim.opt.relativenumber = true

-- 2 tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- copiar al portapapeles del os
vim.opt.clipboard = "unnamedplus"

-- Sin limite de longitud de la linea
vim.opt.wrap = false

-- cuando busca no se queda con color y mientra busca se pone de color
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- para mejorar los colores
vim.opt.termguicolors = true

-- el cursor siempre queda con 8 espacios para arriba y para abajo
vim.opt.scrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.o.encoding = "utf8"
vim.o.mouse = "a"

-- Tab settings
vim.o.sw = 2

-- No swap file
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.incsearch = true

vim.o.cursorline = true
vim.o.colorcolumn = "150"
vim.cmd("highlight ColoColumn ctermbg=0 guibg=lightgrey")

vim.o.splitbelow = true
