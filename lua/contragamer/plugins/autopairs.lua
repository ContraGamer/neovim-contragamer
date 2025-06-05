return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local safe_require = require("contragamer.utils").safe_require
    local autopairs = safe_require("nvim-autopairs")
    if not autopairs then
      return
    end

    -- configure autopairs
    autopairs.setup({
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { "string" }, -- don't add pairs in lua string treesitter nodes
        javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
        java = false, -- don't check treesitter on java
      },
    })

    local cmp_autopairs = safe_require("nvim-autopairs.completion.cmp")
    if not cmp_autopairs then
      return
    end

    local cmp = safe_require("cmp")
    if not cmp then
      return
    end

    -- make autopairs and completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
