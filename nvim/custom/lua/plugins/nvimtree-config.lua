-- following options are the default
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.netrw_banner = false

require'nvim-tree'.setup {
  open_on_setup = false,
  auto_close = true,
  open_on_tab = true,
  disable_netrw = false,
  hijack_netrw = false,
  update_cwd = false,
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 40,
    side = "left",
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      }
    },
  },
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
  ignore = { ".git", "node_modules", ".cache" },
  quit_on_open = 0,
  hide_dotfiles = 1,
  git_hl = 1,
  root_folder_modifier = ":t",
  allow_resize = 1,
  icons = {
    default = "",
    symlink = "",
    git = {
      unstaged = "",
      staged = "S",
      unmerged = "",
      renamed = "➜",
      deleted = "",
      untracked = "U",
      ignored = "◌",
    },
    folder = {
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
    },
  },
}

local map = vim.api.nvim_set_keymap

map('n', '<Space>e', ':NvimTreeToggle<CR>', {noremap = true})
map('n', '<Space>r', ':NvimTreeRefresh<CR>', {noremap = true})
map('n', '<Space>n', ':NvimTreeFindFile<CR>', {noremap = true})
