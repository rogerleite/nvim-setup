require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {}
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
    --["rust_analyzer"] = function ()
    --    require("rust-tools").setup {}
    --end
}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

--require("user.lsp.lsp-installer")
--require("user.lsp.handlers").setup()

local servers = {
  "elixirls",
}

for _, server in pairs(servers) do
  opts = {
    -- getting "on_attach" and capabilities from handlers
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  -- get the server name
  server = vim.split(server, "@")[1]

  -- pass them to lspconfig
  lspconfig[server].setup(opts)
end

require("user.lsp.elixir")
