require("starvim.lsp.handlers")

local handlers = require("starvim.lsp.handlers")

handlers.setup()

require("starvim.lsp.servers").setup(handlers.on_attach)
