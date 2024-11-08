function ZenbonesColorscheme(theme)
  if theme == 'light' then
    vim.g.zenbones_lightness = "dim"
  end

  if theme == 'dark' then
    vim.g.zenbones_darkness = "stark"
  end
end

function AccentColorscheme()
  vim.g.accent_darken = 1
  vim.g.accent_invert_status = 0
  vim.g.accent_auto_cwd_colour = 0

  -- Custom: No background
  vim.cmd("hi Normal guifg=#bcbfc4 ctermfg=250 guibg=NONE")
  vim.cmd("highlight! link SignColumn Normal")
  -- Gitsign change
  vim.cmd("hi DiffChange guibg=NONE")

  -- Transparent background
  -- vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
end

-- function MellifluousColorscheme()
--   require 'mellifluous'.setup({
--     color_set = 'mountain'
--   })
-- end

function SetColorscheme(color, theme)
  color = color or "coal"

  if theme then
    vim.opt.background = theme
  end

  if color == "zenbones" then
    ZenbonesColorscheme(theme)
  end

  if color == 'accent' then
    AccentColorscheme()
  end

  if color == "base16-colorscheme" then
    -- Tomorrow - custom bg or base00
    require('base16-colorscheme').setup({
      base00 = '#EBEFF0', base01 = '#e0e0e0', base02 = '#d6d6d6', base03 = '#8e908c',
      base04 = '#969896', base05 = '#4d4d4c', base06 = '#282a2e', base07 = '#1d1f21',
      base08 = '#c82829', base09 = '#f5871f', base0A = '#eab700', base0B = '#718c00',
      base0C = '#3e999f', base0D = '#4271ae', base0E = '#8959a8', base0F = '#a3685a'
    })
    return
  end

  vim.cmd.colorscheme(color)
end

-- SetColorscheme("zenbones", "light")
-- SetColorscheme("neobones", "dark")
SetColorscheme("tamarawbones", "light")
