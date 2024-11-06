# 🎨 Rodbit Theme for Neovim

A modern, carefully crafted color scheme for Neovim that prioritizes readability and visual comfort. With a perfect balance of colors and contrasts, Rodbit Theme enhances your coding experience while being easy on the eyes during those long coding sessions.

## ✨ Features

- Carefully selected color palette optimized for readability
- Semantic color choices that make code structure clear at a glance
- Support for popular plugins like Treesitter and LSP
- Dark theme designed for extended coding sessions
- Clean and consistent highlighting across different languages

## 🚀 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
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
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
luaCopyuse {
    'rodbit-studios/rodbit-theme.nvim',
    config = function()
        require('rodbit-theme').load()
    end
}
```

## 📸 Screenshots

[Coming Soon]

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request if you have any improvements to suggest.

## 📝 License

MIT License - see the LICENSE file for details.

## 💖 Credits

Created with ❤️ by Rodbit Studios
Custom Neovim setup for Rodbit Studios
