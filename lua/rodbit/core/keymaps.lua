------------------------------------------ LEADER -------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

----------------------------------------- DEFAULTS ------------------------------------------------
local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", opts) -- use jk as Escape
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true }) -- Disable the spacebar key's default behavior in Normal and Visual modes
keymap.set("n", "x", '"_x', opts) -- delete single character without copying into register

------------------------------------------- FILES -------------------------------------------------
keymap.set("n", "<leader>sa", "<cmd> wa <CR>", { desc = "Save all files" })
keymap.set("n", "<leader>q", "<cmd> wqa <CR>", { desc = "Quit all files" })

----------------------------------------- NAVIGATION ----------------------------------------------
keymap.set("n", "{", "{zz") -- Navigate(centered) to previous of code block
keymap.set("n", "}", "}zz") -- Navigate(centered) to next of code block
keymap.set("n", "G", "Gzz") -- Navigate(centered) when going to end of file
keymap.set("n", "gg", "ggzz") -- Navigate(centered) when going to beginning of file
keymap.set("n", "%", "%zz") -- Navigate(centered) when going to matching tab
keymap.set("n", "*", "*zz") -- Navigate(centered) to next matching string
keymap.set("n", "#", "#zz") -- Navigate(centered) to previous matching string

keymap.set("n", "<C-d>", "<C-d>zz", opts) -- Navigate down the file
keymap.set("n", "<C-u>", "<C-u>zz", opts) -- Navigate up the file
keymap.set("n", "n", "nzzzv", opts) -- Find next and keep centered
keymap.set("n", "N", "Nzzzv", opts) -- Find previous and keep centered

keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous Buffer" })
keymap.set("n", "<leader>bd", ":Bdelete!<CR>", { desc = "Close Buffer" })
keymap.set("n", "<leader>bn", "<cmd> enew <CR>", { desc = "New Buffer" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split windows horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make windows equal size" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close window" })

keymap.set("n", "<C-k>", ":wincmd k<CR>", opts) -- Go to top split
keymap.set("n", "<C-j>", ":wincmd j<CR>", opts) -- Go to bottom split
keymap.set("n", "<C-h>", ":wincmd h<CR>", opts) -- Go to right split
keymap.set("n", "<C-l>", ":wincmd l<CR>", opts) -- Go to left split

-------------------------------------- TEXT MANIPULATION ------------------------------------------
keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", { desc = "Toggle line wrap" })

keymap.set("n", "<leader>nh", "<cmd>noh<CR>") -- Clear highlights

keymap.set("n", "U", "<C-r>") -- Press 'U' for redo

keymap.set("v", "<", "<gv", opts) -- Indent left
keymap.set("v", ">", ">gv", opts) -- Indent right

keymap.set("v", "p", '"_dP', opts) -- Keep last yanked when pasting

keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set("n", "<leader>ds", vim.diagnostic.open_float, { desc = "Open symbols" })
keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current line Down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move current line Up" })

keymap.set("n", "gl", ":sil !open <cWORD><cr>", { desc = "Go to Link" }) -- Press gl to open the link under the cursor

keymap.set("n", "L", "$") -- Jump to the end of the line
keymap.set("n", "H", "^") -- Jump to the start of the line
