vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

local options = {
  relativenumber = true,
  number = true,

  -- tabs & indentation
  tabstop = 2, -- 2 spaces for tabs (prettier default)
  shiftwidth = 2, -- 2 spaces for indent width
  expandtab = true, -- expand tab to spaces
  autoindent = true, -- copy indent from current line when starting new one

  wrap = false,

  -- search settings
  ignorecase = true, -- ignore case when searching
  smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive

  cursorline = true,

  -- turn on termguicolors for tokyonight colorscheme to work
  ---- (have to use iterm2 or any other true color terminal)
  --termguicolors = true,
  background = "dark", -- colorschemes that can be light or dark will be made dark
  signcolumn = "yes", -- show sign column so that text doesn't shift

  -- backspace
  backspace = "indent,eol,start", -- allow backspace on indent, end of line or insert mode start position

  -- split windows
  splitright = true, -- split vertical window to the right
  splitbelow = true, -- split horizontal window to the bottom

  -- turn off swapfile
  swapfile = false,
}

for k, v in pairs(options) do
  opt[k] = v
end

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
