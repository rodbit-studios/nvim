-- lua/rodbit/plugins/colorscheme.lua
return {
	{
		"catppuccin/nvim",
		name = "rodbit",
		priority = 1000,
		config = function()
			local palette = {
				-- Base colors
				black = "#1E1E1E",
				dark_gray = "#4D4D4D",
				gray = "#999999",
				light_gray = "#E0E0E0",
				off_white = "#FAFAFA",
				-- Primary colors
				red = "#E74C57", -- Only for warnings/errors
				blue = "#0288B0", -- Primary accent
				dark_blue = "#036B86", -- Secondary accent
				yellow = "#FFC857", -- Highlights/Search
				muted_blue = "#A0DDE1", -- Strings/Comments
				bg = "#1A1A1A", -- Background
				-- Additional shades for lualine
				darker_blue = "#025577", -- Darker shade of blue
				lightest_blue = "#B8E5E8", -- Lighter shade of muted_blue
			}

			local highlights = {
				-- Editor groups
				Normal = { fg = palette.off_white, bg = palette.bg },
				NormalFloat = { fg = palette.off_white, bg = palette.black },
				Cursor = { fg = palette.bg, bg = palette.gray },
				CursorLine = { bg = palette.black },
				CursorLineNr = { fg = palette.blue, bold = true }, -- Changed from yellow to blue
				LineNr = { fg = palette.dark_gray },
				SignColumn = { bg = palette.bg },
				ColorColumn = { bg = palette.black },
				VertSplit = { fg = palette.dark_gray },

				-- Search and selection
				Search = { fg = palette.bg, bg = palette.yellow },
				IncSearch = { fg = palette.bg, bg = palette.yellow },
				Visual = { bg = palette.dark_gray },

				-- Popup menus
				Pmenu = { fg = palette.off_white, bg = palette.black },
				PmenuSel = { fg = palette.bg, bg = palette.blue }, -- Changed from yellow to blue
				PmenuSbar = { bg = palette.dark_gray },
				PmenuThumb = { bg = palette.gray },

				-- Syntax groups
				Comment = { fg = palette.gray, italic = true },
				Constant = { fg = palette.dark_blue }, -- Changed from red to dark_blue
				String = { fg = palette.muted_blue },
				Character = { fg = palette.muted_blue },
				Number = { fg = palette.blue }, -- Changed from yellow to blue
				Boolean = { fg = palette.blue }, -- Changed from yellow to blue
				Float = { fg = palette.blue }, -- Changed from yellow to blue

				Identifier = { fg = palette.off_white },
				Function = { fg = palette.blue },

				Statement = { fg = palette.dark_blue }, -- Changed from red to dark_blue
				Conditional = { fg = palette.dark_blue },
				Repeat = { fg = palette.dark_blue },
				Label = { fg = palette.dark_blue },
				Operator = { fg = palette.gray },
				Keyword = { fg = palette.dark_blue },
				Exception = { fg = palette.dark_blue },

				PreProc = { fg = palette.blue },
				Include = { fg = palette.blue },
				Define = { fg = palette.blue },
				Macro = { fg = palette.blue },
				PreCondit = { fg = palette.blue },

				Type = { fg = palette.dark_blue },
				StorageClass = { fg = palette.dark_blue },
				Structure = { fg = palette.dark_blue },
				Typedef = { fg = palette.dark_blue },

				Special = { fg = palette.blue }, -- Changed from yellow to blue
				SpecialChar = { fg = palette.blue },
				Tag = { fg = palette.blue },
				Delimiter = { fg = palette.gray },
				SpecialComment = { fg = palette.gray, italic = true },
				Debug = { fg = palette.red }, -- Keeping red for debug

				-- Git highlighting
				DiffAdd = { fg = palette.dark_blue, bg = palette.black },
				DiffChange = { fg = palette.blue, bg = palette.black }, -- Changed from yellow to blue
				DiffDelete = { fg = palette.red, bg = palette.black },
				DiffText = { fg = palette.muted_blue, bg = palette.black },

				-- Diagnostic highlighting (keeping red for errors/warnings)
				DiagnosticError = { fg = palette.red },
				DiagnosticWarn = { fg = palette.yellow },
				DiagnosticInfo = { fg = palette.blue },
				DiagnosticHint = { fg = palette.muted_blue },
			}

			-- Lualine theme definition
			local lualine_theme = {
				normal = {
					a = { bg = palette.blue, fg = palette.off_white, gui = "bold" },
					b = { bg = palette.dark_blue, fg = palette.off_white },
					c = { bg = palette.black, fg = palette.light_gray },
				},
				insert = {
					a = { bg = palette.dark_blue, fg = palette.off_white, gui = "bold" },
					b = { bg = palette.darker_blue, fg = palette.off_white },
					c = { bg = palette.black, fg = palette.light_gray },
				},
				visual = {
					a = { bg = palette.muted_blue, fg = palette.black, gui = "bold" },
					b = { bg = palette.lightest_blue, fg = palette.black },
					c = { bg = palette.black, fg = palette.light_gray },
				},
				replace = {
					a = { bg = palette.yellow, fg = palette.black, gui = "bold" },
					b = { bg = palette.dark_gray, fg = palette.off_white },
					c = { bg = palette.black, fg = palette.light_gray },
				},
				command = {
					a = { bg = palette.dark_gray, fg = palette.off_white, gui = "bold" },
					b = { bg = palette.gray, fg = palette.off_white },
					c = { bg = palette.black, fg = palette.light_gray },
				},
				inactive = {
					a = { bg = palette.black, fg = palette.gray },
					b = { bg = palette.black, fg = palette.gray },
					c = { bg = palette.black, fg = palette.gray },
				},
			}

			-- Setup function
			local function setup()
				vim.cmd("hi clear")
				if vim.fn.exists("syntax_on") then
					vim.cmd("syntax reset")
				end
				vim.o.background = "dark"
				vim.o.termguicolors = true

				-- Set highlight groups
				for group, settings in pairs(highlights) do
					vim.api.nvim_set_hl(0, group, settings)
				end

				-- Set up lualine theme
				require("lualine").setup({
					options = {
						theme = lualine_theme,
					},
				})
			end

			-- Execute setup
			setup()

			-- Create command to reload theme
			vim.api.nvim_create_user_command("RodbitTheme", setup, {})
		end,
	},
}
