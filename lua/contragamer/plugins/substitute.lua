return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local safe_require = require("contragamer.utils").safe_require
    local substitute = safe_require("substitute")
    if not substitute then
      return
    end

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
    keymap.set("n", "ss", substitute.line, { desc = "Substitute line" })
    keymap.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
    keymap.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
