function SetColorscheme(color)
  color = color or "coal"
  vim.cmd.colorscheme(color)

  -- Transparent background
  -- vim.api.nvim.set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim.set_hl(0, "NormalFloat", { bg = "none" })
end


SetColorscheme()
