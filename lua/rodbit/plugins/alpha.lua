return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {

			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"                                                       ",
			"     ██████╗  ██████╗ ██████╗ ██████╗ ██╗████████╗     ",
			"     ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██║╚══██╔══╝     ",
			"     ██████╔╝██║   ██║██║  ██║██████╔╝██║   ██║        ",
			"     ██╔══██╗██║   ██║██║  ██║██╔══██╗██║   ██║        ",
			"     ██║  ██║╚██████╔╝██████╔╝██████╔╝██║   ██║        ",
			"     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝   ╚═╝        ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("<leader> ee", " > Explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("<leader> wr", "󰁯 > Restore Session", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", " > Quit", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
