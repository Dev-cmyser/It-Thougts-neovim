-- Русский язык

local map = vim.keymap.set
-- Сохранение файла
map("n", "<leader>ц", ":w<CR>")

-- КОментирование ( любое количество строк )
map("n", "<leader>.", ":CommentToggle<CR>")
map("v", "<leader>.", ":CommentToggle<CR>")

-- В Нормальный режим
map("i", "оо", "<Esc>")

-- Перемещение влево (аналог клавиши 'h')
map("n", "р", "h")
map("v", "р", "h")

-- Перемещение вниз (аналог клавиши 'j')
map("n", "о", "j")
map("v", "о", "j")

-- Перемещение вверх (аналог клавиши 'k')
map("n", "л", "k")
map("v", "л", "k")

-- Перемещение вправо (аналог клавиши 'l')
map("n", "д", "l")
map("v", "д", "l")

-- Удаление
map("n", "в", "d")
map("n", "вц", "dw")
map("n", "вв", "dd")
map("v", "в", "d")
map("v", "вв", "dd")

map("n", "с", "с")
map("n", "сц", "сw")
map("v", "с", "с")
map("v", "св", "сс")

map("n", "ч", "x")

-- Go to Insert mode
map("n", "ф", "a")
map("n", "щ", "o")
map("n", "Щ", "O")
map("n", "ш", "i")
map("v", "с", "c")

-- Вставка
map("n", "з", "p")
map("v", "з", "p")

-- Отмена действия
map("n", "г", "u")

-- Копирование
map("n", "нн", "yy")
map("n", "н", "y")
map("v", "н", "yy")

-- Замена replace
map("n", "к", "r")

-- Пермещение между вкладками ( буфферами )
map("n", "Р", ":BufferLineCyclePrev<CR>")
map("n", "Д", ":BufferLineCycleNext<CR>")

-- Закрытие всех буферов
map("n", "<leader>ч", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")
-- одного
map("n", "<leader>Ч", ":BufferLinePickClose<CR>")

-- Выделение
map("n", "м", "v")
map("v", "м", "v")
map("n", "М", "V")
map("v", "М", "V")

-- Дерево
map("n", "<leader>у", ":Neotree float  reveal toggle<CR>")
map("n", "<leader>щ", ":Neotree float git_status<CR>")

-- Команды
map("n", "Ж", ":")

-- Удаление буфера
vim.api.nvim_set_keymap("n", "<leader>с", ":lua _G.close_and_go_right()<CR>", { noremap = true, silent = true })

-- В начало и конец файла
map("n", "пп", "gg")
map("v", "пп", "gg")
map("n", "П", "G")
map("v", "П", "G")

-- Показать файл в дереве
map("n", "<leader>ы", ":Neotree show reveal <CR>")
