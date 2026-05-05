local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local highlight_group = augroup("StarVimHighlight", { clear = true })
autocmd("TextYankPost", {
  group = highlight_group,
  callback = function()
    vim.hl.on_yank({ timeout = 200 })
  end,
})

local general_group = augroup("StarVimGeneral", { clear = true })
autocmd({ "BufReadPre", "BufNewFile" }, {
  group = general_group,
  callback = function()
    vim.opt_local.formatoptions:remove("o")
  end,
})

autocmd("FileType", {
  group = general_group,
  pattern = { "help", "qf", "lspinfo" },
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end,
})

autocmd("BufWritePre", {
  group = general_group,
  callback = function()
    if vim.fn.getcmdwintype() == "" then
      vim.cmd("silent! %s/\\s\\+$//e")
    end
  end,
})
