local g = vim.g 	      -- global variables
local opt = vim.opt	    -- global / buffer / windows-scoped options
local cmd = vim.cmd     -- выполнять команды Vim
local exec = vim.api.nvim_exec  -- execute Vimscript

opt.tabstop = 2 	                  -- один таб равен двум пробелам
opt.shiftwidth = 2 	                -- два пробела в табе
opt.expandtab = true 	              -- использовать пробел в табуляции
opt.smartindent = true              -- autoindent new lines
opt.timeoutlen = 350
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.fileformat = unix

g.translate_source = 'ru'
g.translate_target = 'en'

-- Запоминает где nvim последний раз редактировал файл
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

