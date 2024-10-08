local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Neo-tree
-- vim.keymap.set("n", "<leader>e", ":Ex<CR>", opts)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>o", ":NvimTreeFocus<CR>", opts)

-- Quit
vim.keymap.set("n", "qq", ":q<CR>", opts)
vim.api.nvim_set_keymap("n", "<Esc>", ":nohlsearch<CR><Esc>", opts)

-- CmdLine
-- vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", opts)

-- Save
vim.keymap.set("n", "<C-s>", ":silent :w<CR>", opts)
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", opts)
vim.keymap.set('n', '<C-a>', 'ggVG', opts)

-- Useful features
vim.keymap.set("i", "jj", "<ESC>", opts)
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "dp", "d$", opts)
vim.keymap.set("n", "vv", "V", opts)
-- vim.api.nvim_set_keymap('v', 'diw', 'd$', opts)

-- Split
vim.keymap.set("n", "\\", ":vsplit<CR>", opts)
vim.keymap.set("n", "-", ":split<CR>", opts)

-- Bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<leader>c", ":bd<CR>", opts)

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", opts)
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", opts)
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>", opts)
vim.api.nvim_set_keymap("n", "<F2>", ":ToggleTerm<CR>", opts)
vim.api.nvim_set_keymap("t", "<F2>", "<C-\\><C-n>:ToggleTerm<CR>", opts)

-- Resize split windows
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", opts)

-- Telescope
vim.keymap.set("n", "<leader><space>", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
vim.keymap.set('n', '<leader>tth', ':Telescope colorscheme<CR>', opts)


-- Terminal
vim.keymap.set("t", "<esc>", [[<c-\><c-n>]], opts)
vim.keymap.set("t", "jk", [[<c-\><c-n>]], opts)
vim.keymap.set("t", "jj", [[<c-\><c-n>]], opts)
vim.keymap.set("t", "<c-h>", [[<cmd>wincmd h<cr>]], opts)
vim.keymap.set("t", "<c-j>", [[<cmd>wincmd j<cr>]], opts)
vim.keymap.set("t", "<c-k>", [[<cmd>wincmd k<cr>]], opts)
vim.keymap.set("t", "<c-l>", [[<cmd>wincmd l<cr>]], opts)
vim.keymap.set("t", "<c-w>", [[<c-\><c-n><c-w>]], opts)

vim.keymap.set("n", "<leader>ss", "<cmd>lua require('sg.extensions.telescope').fuzzy_search_results()<CR>", opts)
