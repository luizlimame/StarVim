local M = {}

M.setup = function()

  local lsp_servers = {
   astro = require('starvim.lsp.servers.astro'),
   clangd = require('starvim.lsp.servers.clangd'),
   deno = require('starvim.lsp.servers.deno'),
   eslint = require('starvim.lsp.servers.eslint'),
   jdtls = require('starvim.lsp.servers.jdtls'),
   lua_ls = require('starvim.lsp.servers.lua-ls'),
   luau_lsp = require('starvim.lsp.servers.roblox'),
   pyright = require('starvim.lsp.servers.pyright'),
   rust = require('starvim.lsp.servers.rust'),
   tyscript = require('starvim.lsp.servers.tyscript'),
   vue = require('starvim.lsp.servers.vue'),
   yaml_ls = require('starvim.lsp.servers.yaml-ls'),
 }

  for _, name in ipairs(lsp_servers) do
    local ok, config = pacll(require, "starvim.lsp.servers." .. name)
     if ok then
       vim.lsp.config(name, config)
       vim.lsp.enable(name)
     else
       print("Could not load the configs for: " .. name)
     end
   end
end

return M
