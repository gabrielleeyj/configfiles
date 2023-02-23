vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer just manages itself
	use 'wbthomason/packer.nvim'

	-- LSP Stuff
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
    		{'neovim/nvim-lspconfig'},
    		{'williamboman/mason.nvim'},
    		{'williamboman/mason-lspconfig.nvim'},

    		-- Autocompletion
    		{'hrsh7th/nvim-cmp'},
    		{'hrsh7th/cmp-buffer'},
    		{'hrsh7th/cmp-path'},
    		{'saadparwaiz1/cmp_luasnip'},
    		{'hrsh7th/cmp-nvim-lsp'},
    		{'hrsh7th/cmp-nvim-lua'},

			-- Debuggers support
			{'mfussenegger/nvim-dap'},
			{'theHamsta/nvim-dap-virtual-text'},
			{'rcarriga/nvim-dap-ui'},

    		-- Snippets
    		{'L3MON4D3/LuaSnip'},
    		{'rafamadriz/friendly-snippets'},
  		}
	}

	-- Golang Stuff
 	use {
		 "ray-x/go.nvim",
		 requires = {
			 "ray-x/guihua.lua"
		 },
  	}

	use {
		'ray-x/navigator.lua',
		requires = {
			{ 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
			{ 'neovim/nvim-lspconfig' },
		},
	}

	-- Gaze deeply into the unknown
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	-- Use fzf native for telescope
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}

	-- comment stuff out
	use 'preservim/nerdcommenter' -- comment out blocks easily

	-- Time Pope is a god
	use 'tpope/vim-surround' -- keymappings for manipulating brackets
	use 'tpope/vim-fugitive' -- keymappings for Git Stuff
	-- Git stuff
	use 'airblade/vim-gitgutter'
	use 'kdheepak/lazygit.nvim'

	use {
		'lewis6991/gitsigns.nvim',
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	}

	-- Yanking manager (yeah yeah I know, registers exist)
	use {
		"AckslD/nvim-neoclip.lua",
		requires = { 'nvim-telescope/telescope.nvim' },
		config = function()
			require('neoclip').setup()
		end
	}

	-- Treesitter is life
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- a better terminal experience
	use {
		'akinsho/toggleterm.nvim',
	}
	-- auto-save magic
	use {
		'Pocco81/auto-save.nvim',
	}

	use {'mg979/vim-visual-multi'} -- Cursor Shortcuts for right-clicks

	-- tab bar
	use 'nvim-tree/nvim-web-devicons'
	use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

	-- prettier bottom bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- nvim dashboard
	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
		end
	}

	-- nvim file tree. Alternative to NerdTree
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	-- whichkey because i can't remember all of the Shortcuts
	use {
		'folke/which-key.nvim',
		config = function()
			require'which-key'.setup{
			}
		end
	}

	-- colorscheme
	use 'folke/tokyonight.nvim'
	use 'rmehri01/onenord.nvim'
end)
