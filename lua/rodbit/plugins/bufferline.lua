return {
	"akinsho/bufferline.nvim",
	lazy = false,
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		vim.opt.termguicolors = true
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "tabs",
				separator_style = "thin",
				color_icons = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					},
				},
				style_preset = bufferline.style_preset.no_bold,
			},
		})
		-- vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
		-- vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
	end,
}
