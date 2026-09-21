-- init.lua

-- Functionality
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smartindent = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.scrolloff = 5

-- Appearance
vim.cmd.colorscheme("retrobox")
vim.api.nvim_set_hl(0, "Normal", { bg = nil })
vim.o.guicursor = ""
vim.o.relativenumber = true
vim.o.number = true

-- Keybinds
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set('n', "<leader>e", function() vim.cmd(":Lexplore") end)

-- Netrw
vim.g.netrw_banner = 0

-- Plugins
vim.pack.add { "https://github.com/lervag/vimtex" }
vim.g.vimtex_view_method = "zathura"
