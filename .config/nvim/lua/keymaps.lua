vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function nnoremap(desc, keys, command)
  vim.api.nvim_set_keymap(
    "n",
    keys,
    command,
    { noremap = true, silent = true, desc = desc }
  )
end

nnoremap("Save", "<Leader><Leader>", ":w<CR>")
nnoremap("Previous buffer", "<Leader>j", "<C-^>")
nnoremap("Toggle fold", "<tab>", "za")
nnoremap(
  "Search/create tmux session from projects folder",
  "<Leader>P",
  ":!tmux neww ~/scripts/tmux-nav.sh<CR>"
)
nnoremap("Open buffer in new tab", "<Leader>s", ":tab split<CR>")
nnoremap("Next tab", "<Right>", ":tabnext +1<CR>")
nnoremap("Prev tab", "<Left>", ":tabnext -1<CR>")
nnoremap("Show highlight group under cursor", "?", ":Inspect<CR>")
