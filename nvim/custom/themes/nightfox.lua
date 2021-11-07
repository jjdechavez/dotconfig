local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
  fox = "nightfox", -- change the colorscheme to use nordfox
})

-- Load the configuration set above and apply the colorscheme
nightfox.load()

vim.cmd([[
let g:lightline = { 'colorscheme': 'nightfox' }
]])
