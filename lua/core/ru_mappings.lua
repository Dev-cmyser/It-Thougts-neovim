-- Русский язык

-- Сохранение файла
vim.keymap.set("n", "<leader>ц", ":w<CR>")

-- КОментирование ( любое количество строк )
vim.keymap.set("n", "<leader>.", ":CommentToggle<CR>")
vim.keymap.set("v", "<leader>.", ":CommentToggle<CR>")

-- В Нормальный режим
vim.keymap.set("i", "оо", "<Esc>")

-- Перемещение влево (аналог клавиши 'h')
vim.keymap.set("n", "р", "h")
vim.keymap.set("v", "р", "h")

-- Перемещение вниз (аналог клавиши 'j')
vim.keymap.set("n", "о", "j")
vim.keymap.set("v", "о", "j")

-- Перемещение вверх (аналог клавиши 'k')
vim.keymap.set("n", "л", "k")
vim.keymap.set("v", "л", "k")

-- Перемещение вправо (аналог клавиши 'l')
vim.keymap.set("n", "д", "l")
vim.keymap.set("v", "д", "l")

-- Удаление
vim.keymap.set("n", "в", "d")
vim.keymap.set("v", "в", "d")
vim.keymap.set("n", "вв", "dd")
vim.keymap.set("n", "ч", "x")

-- Go to Insert mode
vim.keymap.set("n", "ф", "a")
vim.keymap.set("n", "щ", "o")
vim.keymap.set("n", "Щ", "O")
vim.keymap.set("n", "ш", "i")
vim.keymap.set("v", "с", "c")

-- Вставка
vim.keymap.set("n", "з", "p")
vim.keymap.set("v", "з", "p")

-- Отмена действия
vim.keymap.set("n", "г", "u")

-- Копирование
vim.keymap.set("n", "нн", "yy")
vim.keymap.set("n", "н", "y")
vim.keymap.set("v", "н", "yy")

-- Замена replace
vim.keymap.set("n", "к", "r")

-- Пермещение между вкладками ( буфферами )
vim.keymap.set("n", "Р", ":BufferLineCyclePrev<CR>:Neotree show reveal<CR>")
vim.keymap.set("n", "Д", ":BufferLineCycleNext<CR>:Neotree show reveal<CR>")

-- Закрытие всех буферов
vim.keymap.set("n", "<leader>ч", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")
-- одного
vim.keymap.set("n", "<leader>Ч", ":BufferLinePickClose<CR>")

-- ВыделениЧ
vim.keymap.set("n", "м", "v")
vim.keymap.set("v", "м", "v")
vim.keymap.set("n", "М", "V")
vim.keymap.set("v", "М", "V")

-- Дерево
vim.keymap.set("n", "<leader>у", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>щ", ":Neotree float git_status<CR>")

-- Команды
vim.keymap.set("n", "Ж", ":")

-- Удаление буфера
vim.api.nvim_set_keymap("n", "<leader>с", ":lua _G.close_and_go_right()<CR>", { noremap = true, silent = true })

-- В начало и конец файла
vim.keymap.set("n", "пп", "gg")
vim.keymap.set("v", "пп", "gg")
vim.keymap.set("n", "П", "G")
vim.keymap.set("v", "П", "G")

-- Показать файл в дереве
vim.keymap.set("n", "<leader>ы", ":Neotree show reveal <CR>")
