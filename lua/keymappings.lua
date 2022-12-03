local map = function(mode, keys, cmd, opt)
    local options = {
        noremap = true,
        silent = true,
        nowait = true
    }
    if opt then
        options = vim.tbl_extend("force", options, opt)
    end
    vim.api.nvim_set_keymap(mode, keys, cmd, options)
end

vim.g.mapleader = " " -- leader
-- base
map("n", "<C-s>", ":w <CR>")
map("n", "<C-q>", ":q<CR>")
-- TODO插入模式保存
-- map("i", "<C-s>", ":update<CR>")

-- moving
map("", "i", "k")
map("", "k", "j")
map("", "j", "h")
map("", "<CR>", "i")
map("", "<A-i>", "9k")
map("", "<A-k>", "9j")
map("", "<A-j>", "0")
map("", "<A-l>", "$")

-- insert moving
map("i", "<A-i>", "<Up>")
map("i", "<A-k>", "<Down>")
map("i", "<A-j>", "<Left>")
map("i", "<A-l>", "<Right>")
map("i", "<A-S-i>", "<PageUp>")
map("i", "<A-S-k>", "<PageDown>")
map("i", "<A-S-j>", "<Home>")
map("i", "<A-S-l>", "<End>")

-- indent
map("n", ">", ">>")
map("n", "<", "<<")
map("v", ">", ">gv")
map("v", "<", "<gv")

-- move line
map("v", "<A-Down>", ":m '>+1<CR>gv-gv")
map("v", "<A-Up>", ":m '<-2<CR>gv-gv")
map("n", "<A-Down>", ":m .+1<CR>==")
map("n", "<A-Up>", ":m .-2<CR>==")

-- plu
-- nvim-tree
map("n", "<A-o>", ":NvimTreeToggle<CR>")

-- bufferline 
-- 左右Tab切换
map("n", "<A-;>", ":BufferLineMoveNext<CR>")
map("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>")
map("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>")
map("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>")
map("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>")
map("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>")
map("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>")
map("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>")
map("n", "<A-8>", ":BufferLineGoToBuffer 8<CR>")
map("n", "<A-9>", ":BufferLineGoToBuffer 9<CR>")

map("n", "<A-S-f>", "gg=G")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
