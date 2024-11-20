return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			on_colors = function(colors)
				colors.comment = "#5c6370"
			end,
			transparent = true, -- Optional: can help with loading
		})
		vim.cmd.colorscheme("tokyonight-moon")
	end,
}
