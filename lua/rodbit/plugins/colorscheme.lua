return {
	{
		"rodbit-studios/rodbit-theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("rodbit-theme").load()
		end,
	},
}
