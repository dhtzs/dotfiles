vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.g.loaded_netrwPlugin = 1
vim.g.have_nerd_font = true
vim.g.python3_host_prog = "/usr/bin/python3"

local opt = vim.opt

-- line numbers
opt.number = true -- shows absolute line number on cursor line
opt.relativenumber = true -- shows relative line numbers on other lines

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new ones 
opt.smartindent = true -- make indenting smarter again

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line:

-- appearance
opt.showmode = false -- don't show the mode, since it's already in the status line
opt.termguicolors = true -- enable 24-bit colour
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.guicursor = "" -- disable cursor line
opt.winborder = "rounded" -- rounded window borders

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- autocompletions
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
  end,
})

-- diagnostics
vim.diagnostic.config({
  update_in_insert = true,
  virtual_lines = {
    current_line = true
  }
})
