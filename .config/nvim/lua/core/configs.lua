vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.cmdheight = 0
vim.opt.updatetime = 100
vim.opt.laststatus = 2
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"
vim.opt.swapfile = false
vim.opt.so = 30

vim.opt.cursorline = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

-- vim.cmd([[highlight clear LineNr]])
-- vim.cmd([[highlight clear SignColumn]])

vim.cmd([[
  autocmd ColorScheme pywal16 highlight Comment guibg=none ctermbg=none
]])

vim.api.nvim_set_hl(0, "BufferLine", { bg = "none", fg = 'none' })
vim.api.nvim_set_keymap("n", "dw", "d$", { noremap = true, silent = true })                      

vim.o.guicursor = table.concat({
  "n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
  "r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")
vim.api.nvim_set_hl(0, "Comment", { bg = "none" })
