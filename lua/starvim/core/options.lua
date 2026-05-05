local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.maplocalleader = ","

opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.signcolumn = "yes"
opt.colorcolumn = ""
opt.termguicolors = true
opt.timeoutlen = 300
opt.updatetime = 200
opt.splitbelow = true
opt.splitright = true
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.undofile = true
opt.undodir = vim.fn.expand("~/.cache/nvim/undo")
opt.swapfile = false
opt.backup = false
opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_node_provider = 0
