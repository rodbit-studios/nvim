return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			on_colors = function(colors)
				colors.comment = "#5c6370"
			end,
		})
		vim.cmd("colorscheme tokyonight-moon")
	end,
}
