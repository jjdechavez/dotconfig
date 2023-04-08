function SetColorscheme(color, theme)
  color = color or "coal"

  if theme then
    vim.opt.background = theme

    -- if color == "zenbones" then
    --   vim.g.zenbones_lightness = "bright"
    -- end
  end


  vim.cmd.colorscheme(color)

  -- Transparent background
  -- vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
end

SetColorscheme("zenbones", "dark")
-- SetColorscheme("zenbones", "light")
