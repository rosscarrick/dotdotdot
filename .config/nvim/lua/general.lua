vim.opt.compatible = false
vim.opt.errorbells = false

--highlights
vim.opt.showmatch = true
vim.opt.termguicolors = true

--lines
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.cursorline = true

--buffer
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.clipboard:append("unnamedplus")
vim.opt.hidden = true

--cursor
vim.opt.guicursor = "n:block-blinkon1,i-ci-ve:ver25-blinkon1"

-- tabs
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.smartindent = true

--search
vim.opt.incsearch = true
vim.opt.hlsearch = false

--folds
vim.o.foldmethod = "indent"
vim.o.foldlevelstart = 99

--scroll
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

--spell
vim.opt.spell = true
vim.opt.spelllang = "en_gb"

--status
vim.opt.statusline = "  "
vim.opt.statusline = vim.opt.statusline:get() .. "󰈔 " .. "%f" -- path to file
vim.opt.statusline = vim.opt.statusline:get() .. "%=" -- Switch to the right side
vim.opt.statusline = vim.opt.statusline:get() .. "%l" .. ":" .. "%2c" -- Current line
vim.opt.statusline = vim.opt.statusline:get() .. " / "
vim.opt.statusline = vim.opt.statusline:get() .. "%L" .. " " -- Total lines
vim.opt.statusline = vim.opt.statusline:get() .. "  "
