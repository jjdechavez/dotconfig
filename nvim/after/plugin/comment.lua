require('Comment').setup({
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
  config = function ()
  end
})

-- Filetype custom comment
local ft = require('Comment.ft')
ft.set('edge', '{{-- %s --}}')
