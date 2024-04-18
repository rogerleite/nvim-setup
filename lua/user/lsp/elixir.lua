local elixir = require("elixir")
local elixirls = require("elixir.elixirls")

elixir.setup({
  nextls = {
    enable = true, -- defaults to false
    init_options = {
      mix_env = "dev",
      mix_target = "host",
      experimental = {
        completions = {
          enable = true -- control if completions are enabled. defaults to false
        }
      }
    },
    on_attach = function(client, bufnr)
      -- custom keybinds
    end
  },
  credo = {enable = false},
  elixirls = {
    enable = false,
    -- default settings, use the `settings` function to override settings
    settings = elixirls.settings {
      dialyzerEnabled = true,
      fetchDeps = false,
      enableTestLenses = false,
      suggestSpecs = false,
    },
    on_attach = function(client, bufnr)
      vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
    end
  },
})
