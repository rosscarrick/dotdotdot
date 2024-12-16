vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function nnoremap(keys, command)
	vim.api.nvim_set_keymap("n", keys, command, { noremap = true, silent = true })
end

-- save
nnoremap("<Leader><Leader>", ":w<CR>")

-- previous buffer
nnoremap("<Leader>j", "<C-^>")

-- fold
nnoremap("<tab>", "za")

--open project in tmux window
nnoremap("<Leader>P", ":!tmux neww ~/scripts/tmux-nav.sh<CR>")

--tabs
nnoremap("<Leader>s", ":tab split<CR>")
nnoremap("<Right>", ":tabnext +1<CR>")
nnoremap("<Left>", ":tabnext -1<CR>")
