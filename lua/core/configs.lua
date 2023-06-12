vim.wo.number = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = true
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
-- vim.opt.textwidth = 600
vim.opt.wrap = true
vim.wo.linebreak = true
vim.opt.breakindent = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"

-- Сварачивание кода
vim.opt.foldenable = true
vim.opt.foldmethod = "manual"
vim.opt.foldnestmax = 3
vim.opt.foldminlines = 10
vim.opt.foldlevelstart = 999

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}

-- other
vim.opt.fileformat = unix

-- Split
vim.opt.cursorline = true -- Подсветка строки с курсором
vim.opt.splitright = true -- vertical split вправо
vim.opt.splitbelow = true -- horizontal split вниз

-- Search
vim.opt.ignorecase = true -- Игнорировать регистр при поиске
vim.opt.smartcase = true -- Не игнорировать регистр, если есть символы в верхнем регистре

-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd([[autocmd BufEnter * set fo-=c fo-=r fo-=o]])

-- Запоминает где nvim последний раз редактировал файл
vim.cmd([[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])
