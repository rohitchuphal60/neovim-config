
-- ==========================================
-- Fresh Neovim Configuration
-- ==========================================

-- Leader key: backslash
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursor and scrolling
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.wrap = false

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- ==========================================
-- Keybindings
-- ==========================================

local map = vim.keymap.set

-- Directory explorer
map("n", "<leader>d", "<cmd>NvimTreeToggle<CR>",
    { desc = "Toggle directory explorer" })

-- Horizontal split
map("n", "<leader>w", "<cmd>split<CR>",
    { desc = "Open horizontal split" })

-- Switch between windows
map("n", "<leader>s", "<C-w>w",
    { desc = "Switch to next window" })

-- Terminal in horizontal split
map("n", "<leader>t",
    "<cmd>split<CR><cmd>terminal<CR>",
    { desc = "Open terminal" })

-- Exit terminal mode with Escape
map("t", "<Esc>", [[<C-\><C-n>]],
    { desc = "Exit terminal mode" })

-- Search navigation
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Resize split windows
map("n", "<A-Up>", "<cmd>resize +2<CR>")
map("n", "<A-Down>", "<cmd>resize -2<CR>")

-- Save file
map("n", "<leader>q", "<cmd>w<CR>",
    { desc = "Save file" })

-- ==========================================
-- Install lazy.nvim plugin manager
-- ==========================================

local lazypath = vim.fn.stdpath("data")
    .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup(
    "plugins",
    {
        install = {
            colorscheme = { "catppuccin" },
        },
    }
)
