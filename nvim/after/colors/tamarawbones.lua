local colors_name = "tamarawbones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require "lush"
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require "zenbones.util"

local bg = vim.o.background

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
palette = util.palette_extend({
  bg = hsluv "#eee8d5",
  fg = hsluv "#2f4146",
  rose = hsluv "#9d0006",
  leaf = hsluv "#79740e",
  wood = hsluv "#b57614",
  water = hsluv "#076678",
  blossom = hsluv "#8f3f71",
  sky = hsluv "#427b58",
}, bg)

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function()
  return {
    -- Statement { base_specs.Statement, fg = palette.rose },
    -- Special { fg = palette.water },
    -- Type { fg = palette.sky, gui = "italic" },
    Cursor { bg = "#eee8d5" },
  }
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
