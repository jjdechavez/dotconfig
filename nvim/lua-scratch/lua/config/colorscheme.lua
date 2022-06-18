-- Nightfox colorschemes: 'nightfox', 'dayfox', 'dawnfox', 'duskfox', 'nordfox', 'terafox'
local colorscheme = "nightfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
