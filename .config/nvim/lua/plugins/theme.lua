return {
  --[[
	{ "Mofiqul/vscode.nvim", 
	lazy = false, 
	priority = 1000,
	opts = {}, 
	config = function()
		require('vscode').setup({
		style = "dark",
		italic_comments = true,
		})

		require('vscode').load()
	end },
	]]
  --
  {
    "EdenEast/nightfox.nvim",
    init = function()
      vim.cmd.colorscheme("nordfox")
    end,
  },
  --[[
	{ "catppuccin/nvim",
	  name = "catppuccin",
	  priority = 1000,
	  init = function() vim.cmd.colorscheme "catppuccin" end,
	  opts = { flavour = "frappe" }
	}
	]]
  --
}
