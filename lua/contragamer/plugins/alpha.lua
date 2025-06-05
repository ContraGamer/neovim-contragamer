return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local safe_require = require("contragamer.utils").safe_require
    local alpha = safe_require("alpha")
    if not alpha then
      return
    end
    local dashboard = safe_require("alpha.themes.dashboard")
    if not dashboard then
      return
    end

    -- Set header
    dashboard.section.header.val = {
"                                                                                                  ",      
"  ██████╗ ██████╗ ███╗   ██╗████████╗██████╗  █████╗  ██████╗  █████╗ ███╗   ███╗███████╗██████╗  ", 
" ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔══██╗ ",
" ██║     ██║   ██║██╔██╗ ██║   ██║   ██████╔╝███████║██║  ███╗███████║██╔████╔██║█████╗  ██████╔╝ ",
" ██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██╗██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗ ",
" ╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗██║  ██║ ",
"  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ ",
"                                                                                                  ",

    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
      dashboard.button("cd ~/.config/nvim", " > Configuration"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
