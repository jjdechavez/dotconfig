require "config.options"
require "config.keymaps"
require "config.plugins"
require "config.colorscheme"
require "config.cmp"
require "config.lsp"
require "config.telescope"
require "config.treesitter"
require "config.autopairs"
require "config.comment"
require "config.gitsigns"
require "config.nvim-tree"
require "config.bufferline"
require "config.lualine"


--[[ local elixir = require("elixir") ]]
--[[]]
--[[ elixir.setup({ ]]
--[[  -- here we specify the path we built our elixir-ls, ]]
--[[  -- here we setup this in home directory,  ]]
--[[  -- make sure you are pointing to right path ]]
--[[  cmd = { "/home/jerald/.elixir-ls/release/language_server.sh" }, ]]
--[[  settings = elixir.settings({ ]]
--[[   dialyzerEnabled = true, ]]
--[[   fetchDeps = false, ]]
--[[   enableTestLenses = false, ]]
--[[   suggestSpecs = false, ]]
--[[  }), ]]
--[[ }) ]]
