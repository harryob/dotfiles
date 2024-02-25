return {
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {
	  extensions = {
	    file_browser = {
	      hijack_netrw = true,
	    }
	  }
	} },
	{
	  "nvim-telescope/telescope-file-browser.nvim",
	   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{ 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons' }, config = true },
	{ 'lewis6991/gitsigns.nvim', config = true },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {
		exclude = {
			filetypes = { "lspinfo", "packer", "checkhealth", "help", "man", "gitcommit", "TelescopePrompt", "TelescopeResults", "dashboard" }
		}
	} },
	{ 
	  'romgrk/barbar.nvim', 
	  dependencies = { 'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons' }, 
	  init = function() vim.g.barbar_auto_setup = false end, 
	  config = true,
	},
	{ 
	  'nvim-lualine/lualine.nvim', 
	  dependencies = { 'nvim-tree/nvim-web-devicons' },
	  opts = { options = { icons_enabled = true, theme = 'auto' } }, 
	},
	{ 'nvimdev/dashboard-nvim', event = 'VimEnter', config = true, requires = { 'nvim-tree/nvim-web-devicons' }, opts = {
	  excludes = {
	  	filetype = {"lspinfo", "packer", "checkhealth", "help", "", "dashboard"}
	  }
	} },
	{
	  "NeogitOrg/neogit",
	  dependencies = {
	  "nvim-lua/plenary.nvim",         -- required
	  "sindrets/diffview.nvim",        -- optional - Diff integration
	  "nvim-telescope/telescope.nvim", 
	  },
	  config = true
	},
	{
	  "folke/noice.nvim",
	  event = "VeryLazy",
	  opts = {
	    presets = {
		inc_rename = true,
		lsp_doc_border = true,
		command_palette = true,
	    }
	  },
	  dependencies = {
	    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	    "MunifTanjim/nui.nvim",
	    -- OPTIONAL:
	    --   `nvim-notify` is only needed, if you want to use the notification view.
	    --   If not available, we use `mini` as the fallback
	    "rcarriga/nvim-notify",
	    }
	},
	{
	  "epwalsh/obsidian.nvim",
	  version = "*",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  opts = { 
		  workspaces = {
			  { name = "mine", path = "~/Library/Mobile Documents/iCloud~md~Obsidian/Documents/harryob" } 
		  }, 
		  ui = { enable = false },
		  note_id_func = function(title) return title end
	  }
	}
}
