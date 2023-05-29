vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree float reveal<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation from buffer's
vim.keymap.set("", "gj", ":wincmd j<CR>")
vim.keymap.set("", "gh", ":wincmd h<CR>")
vim.keymap.set("", "gk", ":wincmd k<CR>")
vim.keymap.set("", "gl", ":wincmd l<CR>")

-- [[ перевести курсор в конец строки в режиме ввода ]]
vim.keymap.set("i", "<leader>.", "<Esc>A")

-- Перемещение стоки в нормальном режиме
vim.keymap.set("n", "<M-[>", ":m .+1<CR>")
vim.keymap.set("n", "<M-]>", ":m .-2<CR>")

-- Перемещение строки в режиме ввода
vim.keymap.set("v", "<M-[>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-]>", ":m '<-2<CR>gv=gv")

-- Перемещие выделеного блока кода в верх
vim.keymap.set("i", "<M-[>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<M-]>", "<Esc>:m .-2<CR>==gi")

-- Comment one line
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>")
-- vim.keymap.set('i', '<leader>w', '<Esc>:w<CR>a')
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
