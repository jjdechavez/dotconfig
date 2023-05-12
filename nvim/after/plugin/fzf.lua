local actions = require "fzf-lua.actions"

require 'fzf-lua'.setup {
  files = {
    previewer = 'false',
    winopts = {
      height = 0.30,
      width  = 0.30,
      row    = 0.35,
      col    = 0.50,
    }
  },
  grep = {
    winopts = {
      split = "belowright new"
    }
  },
  git = {
    status = {
      winopts = {
        split = "belowright new"
      }
    }
  },
  buffers = {
    actions = {
      ["ctrl-d"] = { actions.buf_del, actions.resume },
    }
  }
}
