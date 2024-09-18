return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { "" },
				disabled_filetypes = {
					"NvimTree",
				},
				theme = "eldritch",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "" },
				lualine_c = { "filename" },
				lualine_x = { "" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
