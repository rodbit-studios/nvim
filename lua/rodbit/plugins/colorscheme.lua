return {
	{
		"rodbit-studios/rodbit-theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rodbit-theme")
		end,
	},
}
