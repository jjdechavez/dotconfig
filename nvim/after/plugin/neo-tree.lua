local hdmi_width = 60
local default_width = 30

require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    position = "left",
    width = hdmi_width,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
  },
  source_selector = {
    winbar = false,
    statusline = true
  },
  filesystem = {
    filtered_items = {
      visible = false, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = true, -- only works on Windows for hidden files/directories
      hide_by_name = {
        "node_modules"
      },
      hide_by_pattern = { -- uses glob style patterns
        --"*.meta",
        --"*/src/*/tsconfig.json",
      },
    },
    follow_current_file = true, -- This will find and focus the file in the active buffer every
  },
  buffers = {
    follow_current_file = true, -- This will find and focus the file in the active buffer every
    -- time the current file is changed while the tree is open.
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    show_unloaded = true,
  },
  git_status = {
    window = {
      position = "bottom",
      mappings = {
        ["A"]  = "git_add_all",
        ["u"]  = "git_unstage_file",
        ["a"]  = "git_add_file",
        ["r"]  = "git_revert_file",
        ["cc"] = "git_commit",
        ["P"]  = "git_push",
        ["gg"] = "git_commit_and_push",
      }
    }
  }
})

vim.cmd([[nnoremap \ :NeoTreeShowToggle<cr>]])
vim.keymap.set("n", "<leader>gg", ":Neotree float git_status<cr>")
