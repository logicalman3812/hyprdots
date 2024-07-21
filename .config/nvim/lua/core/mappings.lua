local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Nvim NvimTree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>', opts)

-- Fast quit
vim.keymap.set('n', 'q', ':q<CR>', opts)

vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })

-- Cmdline
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

-- Save
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', opts)

-- Fast visual mode 
vim.keymap.set('i', 'jj', '<ESC>', opts)
vim.keymap.set('i', 'jk', '<ESC>', opts)

-- Split
vim.keymap.set('n', '|', ':vsplit<CR>', opts)
vim.keymap.set('n', '\\', ':split<CR>', opts)

-- Bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<leader>c', ':bd<CR>', opts)


-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>', opts)
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', opts)
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>', opts)
vim.api.nvim_set_keymap('n', '<F2>', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<F2>', '<C-\\><C-n>:ToggleTerm<CR>', { noremap = true, silent = true })

-- Resize split windows
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
