return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local safe_require = require("contragamer.utils").safe_require
    local null_ls = safe_require("null-ls")
    if not null_ls then
      return
    end

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>cf", function()
      vim.lsp.buf.format()
    end, { desc = "Format current file" })
  end,
}
