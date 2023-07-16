-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins loaded via lazy.nvim
require("lazy").setup({
  -- Catppuccin theme: https://github.com/catppuccin/nvim
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- [[ Treesitter ]]
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- [[ Mason.nvim ]]
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate"
  },
  { "williamboman/mason-lspconfig.nvim" },

  -- [[ neovim lspconfig ]]
  { "neovim/nvim-lspconfig" }
})

vim.cmd.colorscheme "catppuccin-mocha"

-- Vim Options

-- Enable line numbers
vim.o.number = true

-- Enable mouse on all modes, neovim default is 'nvi'
vim.o.mouse = 'a'

-- Case-insensitive searching Unless \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Indentation related settings
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Configure Treesitter ]] 
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 'c', 'cpp', 'lua', 'java' },

  -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
  auto_install = true,

  highlight = { enable = true },
  indent = { enable = true },
}

-- [[ Configure Mason ]]
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
}

-- [[ Configure neovim-lspconfig ]]
require("lspconfig").clangd.setup {}
