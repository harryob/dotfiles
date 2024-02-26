vim.opt.number = true

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

require("lazy").setup("plugins")

require("telescope").load_extension "file_browser"

local wk = require("which-key")
wk.register({
  f = {
    name = "file",   
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Grep Files" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" }, 
  },
  d = {
    name = "dir",
    f = { "<cmd>Telescope file_browser<cr>", "Find Directory" },
    r = { "<cmd>NvimTreeFindFile!<cr>", "Root Here" },
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree"},
  },
  b = {
    name = "browser",
    o = { "<cmd>BrowserPreview<cr>", "Open Browser" },
  },
  g = {
    name = "git",
    g = { "<cmd>LazyGit<cr>", "LazyGit" },
  },
}, { prefix = "<leader>" })

wk.register({
  ["B"] = { name = "+buffer"},
  ["B,"] = { "<cmd>BufferPrevious<CR>", "Previous Tab" },
  ["B."] = { "<cmd>BufferNext<CR>", "Next Tab" },
})


