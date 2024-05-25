vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Telescope is a highly extendable fuzzy finder over lists
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Color schemes
	use("bluz71/vim-nightfly-colors")
	use("folke/tokyonight.nvim")
	use("rebelot/kanagawa.nvim")

	-- Terminal helper
	use("skywind3000/vim-terminal-help")

	-- Auto tag closing for HTML, XML, JSX
	use({ "windwp/nvim-ts-autotag" })

	-- Transparent Neovim
	use({ "xiyaowong/transparent.nvim" })

	-- Deferred clipboard
	use({ "EtiamNullam/deferred-clipboard.nvim" })

	-- Auto pairs for '(' '[' '{'
	use({ "windwp/nvim-autopairs" })

	-- Treesitter configurations and abstraction layer
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- Colorize color codes in text
	use({ "norcalli/nvim-colorizer.lua" })

	-- File explorer tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	-- Terminal for Neovim
	use({ "itmecho/neoterm.nvim" })

	-- Buffer line
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- Markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Harpoon, a mark and navigation plugin
	use("theprimeagen/harpoon")

	-- LSP and Autocompletion
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			{ "neovim/nvim-lspconfig" }, -- LSP Support
			{ "hrsh7th/nvim-cmp" }, -- Autocompletion
			{ "hrsh7th/cmp-nvim-lsp" }, -- LSP source for nvim-cmp
			{ "L3MON4D3/LuaSnip" }, -- Snippets
		},
	})

	-- Git integration
	use({
		"dinhhuy258/git.nvim",
	})

	-- Copilot for Neovim
	use({ "zbirenbaum/copilot.lua" })

	-- Linter
	use({ "mfussenegger/nvim-lint" })

	-- Mason, a Neovim plugin for managing Mason projects
	use({
		"williamboman/mason.nvim",
	})

	-- Conform, a Neovim plugin for managing conforming to a style guide
	use({
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup()
		end,
	})

	-- Rainbow parentheses
	use({ "HiPhish/nvim-ts-rainbow2" })
	use("b3nj5m1n/kommentary")
end)

