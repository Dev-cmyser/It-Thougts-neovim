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
vim.keymap.set("n", "вв", "dd")

-- Go to Insert mode
vim.keymap.set("n", "ф", "a")
vim.keymap.set("n", "щ", "o")
vim.keymap.set("n", "Щ", "O")
vim.keymap.set("n", "ш", "i")

--  Вставка
vim.keymap.set("n", "з", "p")

-- Отмена действия
vim.keymap.set("n", "г", "u")

-- Копирование
vim.keymap.set("n", "н", "y")

-- Замена replace
vim.keymap.set("n", "к", "r")

-- Пермещение между вкладками ( буфферами )
vim.keymap.set("n", "<s-Р>", "<s-H>")
vim.keymap.set("n", "<s-Д>", "<s-L>")

-- Закрытие всех буферов
vim.keymap.set("n", "<leader>ч", ":BufferLineSortByTabs<CR>:BufferLineCloseRight<CR>")

-- Выделение
vim.keymap.set("n", "м", "v")
vim.keymap.set("n", "М", "V")

-- Дерево
-- vim.api.nvim_set_keymap("n", "<leader>e", ":lua _G.toggle_neotree()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>у", "<leader>e")
