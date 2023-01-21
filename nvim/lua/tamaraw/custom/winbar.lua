local M = {}

M.winbar_filetype_exclude = {
  "help",
  "packer",
  "NvimTree",
}

local excludes = function()
  if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
    vim.opt_local.winbar = nil
    return true
  end

  return false
end

-- Modified highlight
-- vim.api.nvim_set_hl(0, 'WinbarPath', {bg = '', fg = ''})
-- vim.api.nvim_set_hl(0, 'WinbarModified', {bg = '', fg = ''})

-- Implement custom highlight return this on eval function
-- return '%#WinbarPath'
--   .. file_path
--   .. '%*'
--   .. '%#WinbarModified'
--   .. modified
--   .. '%*'

function M.eval()
  if excludes() then
    return
  end

  -- Try to run this command by :lua = vim.api.nvim_eval_statusline('%f', {})
  local file_path = vim.api.nvim_eval_statusline('%f', {}).str
  local modified = vim.api.nvim_eval_statusline('%m', {}).str == "[+]" and '' or ''
  -- local padding = '%='

  -- Substitute path
  -- file_path = file_path:gsub('/', '  ')

  return string.format('%s %s', file_path, modified)
end

return M
