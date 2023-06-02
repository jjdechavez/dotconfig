vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- move code
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Better Visual move up" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Better Visual move down" })
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", { desc = "Better Visual move up", noremap = true, silent = true })
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", { desc = "Better Visual move down", noremap = true, silent = true })

vim.keymap.set("v", "<", "<gv", { desc = "Indention to Left", noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Indention to Right", noremap = true, silent = true })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Move next line to current line" })
-- scroll on center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- use nvim clipboard to paste not system clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "[y]ank to system clipboard" })
-- copy on nvim - need learn it
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")
-- prereq tmux-sessionizer
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, { desc = "[L]SP [F]ormat" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Remove [H]ighlight" })
vim.keymap.set("n", "<leader>c", "<cmd>Bdelete!<CR>", { desc = "Close [C]urrent Buffer" })

-- Buffers navigation
-- vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Go to Next Buffer", noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Go to Previous Buffer", noremap = true, silent = true })

-- Terminal --
-- Better terminal navigation
-- vim.keymap.set("n", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, desc = "Navigate terminal to left" })
-- vim.keymap.set("n", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, desc = "Navigate terminal to below" })
-- vim.keymap.set("n", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, desc = "Navigate terminal to above" })
-- vim.keymap.set("n", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, desc = "Navigate terminal to right" })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Git Blame
vim.keymap.set("n", "<leader>gf", "<cmd>BlamerToggle<cr>", { silent = true, desc = "[G]it Blame Who the [F]uck" })
-- Git signs
vim.keymap.set("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", { silent = true, desc = "Next Hunk" })
vim.keymap.set("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",
  { silent = true, desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>gsh", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", { silent = true, desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>guh", "<cmd>lua require 'gitsigns'.unstage_hunk()<cr>",
  { silent = true, desc = "Unstage Hunk" })

-- FZF
vim.keymap.set("n", "<leader>f", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true, desc = "[F]ind Files" })
vim.keymap.set("n", "<leader>F",  "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true, desc = "Search grep" })
vim.keymap.set("n", "<leader><space>", "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true, desc = '[ ] Find existing buffers' })
vim.keymap.set("n", "<leader>sk", "<cmd>lua require('fzf-lua').keymaps()<CR>", { silent = true, desc = "[S]earch [K]eymaps" })
vim.keymap.set('n', '<leader>en', "<cmd>FzfLua files cwd=~/.config/nvim <cr>", { desc = '[E]dit [N]eovim config' })
vim.keymap.set("n", "<leader>gs", "<cmd>lua require('fzf-lua').git_status()<CR>", { silent = true, desc = "[G]it [S]tatus" })
vim.keymap.set("n", "<leader>gb", "<cmd>lua require('fzf-lua').git_branches()<CR>", { silent = true, desc = "[G]it [B]ranches" })
vim.keymap.set("n", "<leader>?", "<cmd>lua require('fzf-lua').help_tags()<CR>", { silent = true, desc = "[?] Nvim Documentation" })
