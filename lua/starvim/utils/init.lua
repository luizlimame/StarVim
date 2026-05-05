local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

function M.cmd(command)
  return "<cmd>" .. command .. "<CR>"
end

function M.notify(message, level)
  level = level or vim.log.levels.INFO
  vim.notify(message, level, { title = "Starvim" })
end

return M
