return {
	"rodbit-studios/rodbit-theme.nvim",
	priority = 1000, -- ensure it loads very early
	lazy = false, -- load immediately
	config = function()
		-- Use pcall to prevent errors from stopping startup
		local ok, _ = pcall(function()
			vim.cmd("colorscheme rodbit-theme") -- or your theme name
		end)
		if not ok then
			vim.notify("Error loading colorscheme", vim.log.levels.ERROR)
		end
	end,
}
