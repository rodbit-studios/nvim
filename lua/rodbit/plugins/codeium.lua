return {
	"Exafunction/codeium.vim",
	dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" },
	event = "BufEnter",
	config = function()
		local keymap = vim.keymap

		vim.g.codeium_disable_bindings = 1
		keymap.set("i", "<C-a>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true, desc = "Accept AI suggestion" })
		keymap.set("i", "<C-;>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true, silent = true, desc = "Cycle AI suggestions fowards" })
		keymap.set("i", "<C-,>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true, desc = "Cycle AI suggestions backwards" })
		keymap.set("i", "<C-x>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true, desc = "Clear AI suggestions" })
	end,
}
