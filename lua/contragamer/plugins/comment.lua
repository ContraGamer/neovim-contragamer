return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local safe_require = require("contragamer.utils").safe_require
    local comment = safe_require("Comment")
    if not comment then
      return
    end

    local ts_context_commentstring = safe_require("ts_context_commentstring.integrations.comment_nvim")
    if not ts_context_commentstring then
      return
    end

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}
