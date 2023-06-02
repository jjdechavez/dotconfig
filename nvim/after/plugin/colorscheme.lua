function SetColorscheme(color, theme)
  color = color or "coal"

  if theme then
    print("theme")
    vim.opt.background = theme

    -- if color == "zenbones" then
    --   vim.g.zenbones_lightness = "bright"
    -- end
  end


  vim.cmd.colorscheme(color)

  if color == 'accent' then
    vim.g.accent_darken = 1
    vim.g.accent_invert_status = 0
    vim.g.accent_auto_cwd_colour = 0

    -- Custom: No background
    vim.cmd("hi Normal guifg=#bcbfc4 ctermfg=250 guibg=NONE")
    vim.cmd("highlight! link SignColumn Normal")
  end

  -- Transparent background
  -- vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
end

-- SetColorscheme("zenbones", "dark")
-- SetColorscheme("zenbones", "light")
-- SetColorscheme("neobones", "dark")
SetColorscheme("accent")
