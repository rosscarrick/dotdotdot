vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- save
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":w<CR>", { noremap = true, silent = true })

-- previous buffer
vim.api.nvim_set_keymap("n", "<Leader>j", "<C-^>", { noremap = true, silent = true })

-- fold
vim.api.nvim_set_keymap("n", "<tab>", "za", { noremap = true, silent = true })

--open project in tmux window
vim.keymap.set("n", "<Leader>P", ":!tmux neww ~/scripts/tmux-nav.sh<CR>")
