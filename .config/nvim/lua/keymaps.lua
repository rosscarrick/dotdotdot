vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function map(mode, desc, keys, command)
  vim.api.nvim_set_keymap(
    mode,
    keys,
    command,
    { noremap = true, silent = true, desc = desc }
  )
end

map("n", "Save", "<Leader><Leader>", ":w<CR>")
-- nnoremap("Save", "<Leader><Leader>", ":w<CR>:so %<CR>")
map("n", "Previous buffer", "<Leader>j", "<C-^>")
map("n", "Toggle fold", "<tab>", "za")
map(
  "n",
  "Search/create tmux session from projects folder",
  "<Leader>P",
  ":!tmux neww ~/scripts/tmux-nav.sh<CR>"
)

map("n", "Open buffer in new tab", "<Leader>s", ":tab split<CR>")
map("n", "Next tab", "<Right>", ":tabnext +1<CR>")
map("n", "Prev tab", "<Left>", ":tabnext -1<CR>")
map("n", "Show highlight group under cursor", "<C-?>", ":Inspect<CR>")

map("x", "Paste without register change", "p", '"_dP')
