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

  vim.cmd.colorscheme(color)
end

SetColorscheme("zenbones", "light")
-- SetColorscheme("neobones", "dark")
-- SetColorscheme("accent")
