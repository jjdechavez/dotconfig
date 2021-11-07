lua << EOF
local previewers = require "telescope.previewers"
local sorters = require "telescope.sorters"
local actions = require "telescope.actions"

file_previewer = previewers.vim_buffer_cat.new
grep_previewer = previewers.vim_buffer_vimgrep.new
qflist_previewer = previewers.vim_buffer_qflist.new
file_sorter = sorters.get_fuzzy_file
generic_sorter = sorters.get_generic_fuzzy_sorter

require('telescope').setup{
  defaults = {
    -- cwd = require('lspconfig.util').root_pattern(".git")(vim.fn.expand("%:p")),
    selection_caret = " ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
        width = 0.75,
        preview_cutoff = 120,
        horizontal = { mirror = false },
        vertical = { mirror = false },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
    },
    file_ignore_patterns = {},
    path_display = { shorten = 5 },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
  },
  pickers = {
    find_files = {
      -- find_command = { "fd", "--type=file", "--hidden", "-s", "-a" },
      -- find_command = { "fd", "--type=file", "--hidden", "-s", "-a", require('lspconfig.util').root_pattern(".git")(vim.fn.expand("%:p")) },
      -- cwd = require('lspconfig.util').root_pattern(".git")(vim.fn.expand("%:p")),
    },
    live_grep = {
      --@usage don't include the filename in the search results
      only_sort_text = true,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
  },
}

require('telescope').load_extension('projects')
require('telescope').load_extension('fzf')
EOF

nnoremap <leader>f <cmd>Telescope git_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
