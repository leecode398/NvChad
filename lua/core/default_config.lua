-- Chadrc overrides this file

local M = {}

M.options = {
   -- load your options here or load module with options
   user = function() end,

   nvChad = {
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}

M.ui = {
   -- hl = highlights
   hl_add = {},
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "gruvchad", "onedark" },
   theme = "gruvchad", -- default theme
   transparency = false,

   statusline = {
      separator_style = "default", -- default/round/block/arrow
      config = "%!v:lua.require('ui.statusline').run()",
      override = {},
   },

   -- lazyload it when there are 1+ buffers
   tabufline_lazyloaded = true,
}

M.plugins = {
   override = {},
   remove = {},
   user = {},
   options = {
      lspconfig = {
         setup_lspconf = "", -- path of lspconfig file
      },
   },
}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
