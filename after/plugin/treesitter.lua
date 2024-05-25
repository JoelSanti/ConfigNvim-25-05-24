local status, treesitter = pcall(require, "nvim-treesitter.configs")

if not status then
  return
end

treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "yaml",
    "html",
    "css",
    "markdown",
    "bash",
    "vim",
    "tsx",
    "c", -- Treesitter Parser for C
    "cpp", -- Treesitter Parser for C++
    'xml', 
  },
  
  -- auto install above language parsers
  auto_install = true,
})