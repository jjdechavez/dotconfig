local builtin = require('telescope.builtin')

local previewers = require("telescope.previewers")

require("telescope").setup({
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    color_devicons = true,
    path_display = { "truncate" },

    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    -- layout_strategy = "vertical",
    -- layout_config = {
    --   vertical = {
    --     height = 0.9,
    --     preview_cutoff = 0,
    --     preview_height = 0.6,
    --     results_height = 0.3,
    --     width = 0.5,
    --   },
    -- },

    -- common files to ignore
    file_ignore_patterns = {
      "^.git/",
      "^node_modules/",
      "^deps/",
      "^plugin/packer_compiled.lua",
      "^.next/",
      "^.yarn/",
      "yarn.lock",
    },

    -- default arguments with `--hidden` added to search in hidden files
    vimgrep_arguments = {
      "rg",
      "--no-ignore",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      show_all_buffers = true,
      sort_mru = true,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer"
        }
      }
    }
  },
  extensions = {
    file_browser = {
      initial_mode = "normal",
      path = "%:p:h",
      hidden = true,
    },
  },
})

vim.keymap.set('n', '<leader>f',
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  { desc = "[F]ind Files" })
vim.keymap.set('n', '<leader>F', "<cmd>Telescope live_grep theme=ivy<cr>", { desc = "Search grep" })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>sgb', "<cmd>Telescope git_branches<cr>", { desc = "Checkout branch" })
vim.keymap.set('n', '<leader>sc', "<cmd>Telescope colorscheme<cr>", { desc = "[S]earch [C]olorscheme" })
vim.keymap.set('n', '<leader>sh', "<cmd>Telescope help_tags<cr>", { desc = "[S]earch [H]elp tags" })
vim.keymap.set('n', '<leader>sk', "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set('n', '<leader>sc', "<cmd>Telescope commands<cr>", { desc = "[S]earch [C]ommands" })
vim.keymap.set('n', '<leader>sr', "<cmd>Telescope registers<cr>", { desc = "[S]earch [R]egisters" })
vim.keymap.set("n", "<leader>sm", "<cmd>Telescope man_pages<cr>", { desc = "[S]earch [M]an page" })
vim.keymap.set("n", "<leader>so", "<cmd>Telescope oldfiles<cr>", { desc = "[S]earch [O]pen Recent File" })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>en', "<cmd>Telescope find_files cwd=~/.config/nvim <cr>", { desc = '[E]dit [N]eovim config' })
vim.keymap.set('n', '<leader>ec', "<cmd>Telescope find_files cwd=~/.config <cr>", { desc = '[E]dit Dot[C]onfig' })
