local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>', opts)

vim.keymap.set('n', 'q', ':q<CR>', opts)
vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

-- Save
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', opts)

-- Useful features
vim.keymap.set('i', 'jj', '<ESC>', opts)
vim.keymap.set('i', 'jk', '<ESC>', opts)
vim.api.nvim_set_keymap('v', 'diw', 'd', { noremap = true, silent = true })

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


-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>fw', ':Telescope live_grep<CR>', opts)
-- vim.keymap.set('n', '<leader>th', ':Telescope colorscheme<CR>', opts)
