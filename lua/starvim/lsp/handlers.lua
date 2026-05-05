local M = {}

M.setup = function()
  local config = {
    virtual_text = {
      prefix = "[X]",
      spacing = 2,
    },
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      border = "squared",
      source = "always",
      header = "[header]",
      prefix = "[xx]",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "squared",
    max_width = 80,
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "squared",
  })
end

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
      local bufnr = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true, buffer = bufnr }

      map("n", "gd", vim.lsp.buf.definition, opts)
      map("n", "K", vim.lsp.buf.hover, opts)

      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr, async = false })
          end,
        })
      end
    end,
  })

return M
