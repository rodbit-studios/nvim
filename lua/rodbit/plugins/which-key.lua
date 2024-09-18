return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>c", group = "Code Actions" },
			{ "<leader>e", group = "Explorer" },
			{ "<leader>f", group = "Fuzzy Find" },
			{ "<leader>h", group = "Git" },
			{ "<leader>l", group = "Lazy Git" },
			{ "<leader>m", group = "Format" },
			{ "<leader>n", group = "Clear Search" },
			{ "<leader>r", group = "Rename" },
			{ "<leader>s", group = "Split Window" },
			{ "<leader>t", group = "Tabs" },
			{ "<leader>w", group = "Session" },
			{ "<leader>x", group = "Diagnostics" },
		})
	end,
}
