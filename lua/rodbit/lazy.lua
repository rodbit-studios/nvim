local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "rodbit.plugins" }, { import = "rodbit.plugins.lsp" } }, {
	performance = {
		rtp = {
			-- disable some default Neovim plugins that slow down startup
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
		cache = {
			enabled = true,
		},
	},
	checker = {
		enable = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
