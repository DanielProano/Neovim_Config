vim.g.mapleader = ' '

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.autoread = true

vim.o.breakindent = true
vim.o.colorcolumn = "79"
vim.o.termguicolors = true
vim.o.background = "dark"

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.tabstop = 3
vim.o.shiftwidth = 3
vim.o.undofile = true
vim.o.signcolumn = 'yes'

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 249
vim.o.timeoutlen = 299

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.scrolloff = 9

vim.schedule(function()
	vim.o.clipboard = 'unnamedplus'
end)

vim.keymap.set('v', '<C-c>', 'y', {noremap = true, silent = true})
vim.keymap.set('n', '<C-v>', 'p', {noremap = true, silent = true})
vim.keymap.set('n', '<C-a>', 'ggVG', {noremap = true, silent = true})
vim.keymap.set('n', '<C-x>', '<Cmd>:noh<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'tt', '<Cmd>:Neotree toggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 't', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'qq', '<Cmd>:Neotree focus<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'q', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'ss', '<Cmd>:vsp<CR>', {noremap = true, silent = true})
vim.keymap.set('n', 'b', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'r', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'e', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'w', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'x', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '-', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '=', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '+', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '[', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', ']', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '{', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '}', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '*', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '#', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '@', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '$', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '^', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '&', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '(', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', ')', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '_', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', '~', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'o', '<Nop>', {noremap = true, silent = true})
vim.keymap.set('n', 'xx', '<Cmd>:q<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<S-Tab>', '<gv', {noremap = true, silent = true})
vim.keymap.set('v', '<Tab>', '>gv', {noremap = true, silent = true})

vim.keymap.set("n", "oo", function()
  require("lsp_lines").toggle()
end)

vim.keymap.set('n', '<C-g>', function()
	require('fzf-lua').files()
end, { desc = "Find Files" })

vim.keymap.set('n', '<C-f>', function()
	require('fzf-lua').live_grep()
end, { desc = "Live Grep" })

vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.cmd("startinsert")
    end,
})

vim.api.nvim_command "augroup terminal_setup | au!"
vim.api.nvim_command "autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i"
vim.api.nvim_command "augroup end"


vim.api.nvim_set_keymap("n", "cc", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "c", "<Nop>", { noremap = true, silent = true })

require("sexy").setup()
require("config.lazy")
