vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
-- vim.opt.colorcolumn = "79"
vim.opt.fillchars = { eob = " " }
vim.opt.fileencoding = "utf-8"
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.so = 10
vim.opt.sidescrolloff = 20
vim.opt.cursorline = true

-- vim.o.guicursor = table.concat({
-- 	"n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
-- 	"i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
-- 	"r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
-- }, ",")

vim.cmd([[ augroup ChangeHighlight autocmd! autocmd BufEnter * highlight BufferTabpageFill guibg=none augroup END ]])
