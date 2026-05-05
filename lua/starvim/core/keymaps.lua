local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", { noremap = true })
map("n", "<leader>q", ":q<CR>", { noremap = true })
map("n", "<leader>Q", ":qa<CR>", { noremap = true })

map("n", "<C-h>", "<C-w>h", { noremap = true })
map("n", "<C-j>", "<C-w>j", { noremap = true })
map("n", "<C-k>", "<C-w>k", { noremap = true })
map("n", "<C-l>", "<C-w>l", { noremap = true })

map("n", "<leader>sv", ":vsplit<CR>", { noremap = true })
map("n", "<leader>sh", ":split<CR>", { noremap = true })

map("v", "<leader>y", '"+y', { noremap = true })
map("n", "<leader>p", '"+p', { noremap = true })

map("n", "<Esc>", ":nohlsearch<CR>", { noremap = true })

map("n", "<leader>tt", ":tabnew<CR>", { noremap = true })
map("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
map("n", "<Tab>", ":tabnext<CR>", { noremap = true })
map("n", "<S-Tab>", ":tabprevious<CR>", { noremap = true })

vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>', { desc = 'Terminal Vertical' })

vim.keymap.set('n', '<leader>th', ':split | terminal<CR>', { desc = 'Terminal Horizontal' })

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal insert mode' })
