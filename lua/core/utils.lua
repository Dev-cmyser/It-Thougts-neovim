-- _G.close_and_go_right = function()
-- 	vim.cmd("let b:cursor_pos = [line('.'), col('.')]")
--
-- 	local current_buf = vim.api.nvim_get_current_buf()
-- 	local buf_list = vim.fn.getbufinfo({ buflisted = 1 })
--
-- 	-- Если только один буфер, ничего не делаем
-- 	if #buf_list == 1 then
-- 		return
-- 	end
--
-- 	for i, buf in ipairs(buf_list) do
-- 		if buf.bufnr == current_buf then
-- 			-- если текущий буфер найден, закрываем его
-- 			vim.cmd("bdelete " .. current_buf)
--
-- 			if vim.b.cursor_pos then
-- 				vim.api.nvim_win_set_cursor(0, vim.b.cursor_pos)
-- 			end
-- 			-- переходим к следующему буферу справа, если он существует
-- 			if i < #buf_list then
-- 				vim.cmd("buffer " .. buf_list[i + 1].bufnr)
-- 			else -- иначе переходим к предыдущему буферу слева
-- 				vim.cmd("buffer " .. buf_list[i - 1].bufnr)
-- 			end
-- 			break
-- 		end
-- 	end
-- end
--

-- Инициализируем таблицу для хранения позиций курсора
-- _G.cursor_positions = _G.cursor_positions or {}

_G.close_and_go_right = function()
	local current_buf = vim.api.nvim_get_current_buf()
	local buf_list = vim.fn.getbufinfo({ buflisted = 1 })

	-- Если только один буфер, ничего не делаем
	if #buf_list == 1 then
		return
	end

	-- -- Если только один буфер, закрываем и создаем новый
	-- if #buf_list == 1 then
	-- 	vim.cmd("enew") -- открывает новый пустой буфер
	-- 	vim.cmd("bdelete " .. current_buf)
	-- 	return
	-- end
	-- Находим следующий или предыдущий буфер
	local next_bufnr
	for i, buf in ipairs(buf_list) do
		if buf.bufnr == current_buf then
			if i == #buf_list then
				-- Если текущий буфер последний, идем к предыдущему
				next_bufnr = buf_list[i - 1].bufnr
			else
				-- Иначе идем к следующему
				next_bufnr = buf_list[i % #buf_list + 1].bufnr
			end
			break
		end
	end

	-- Переходим к выбранному буферу и закрываем текущий
	vim.cmd("buffer " .. next_bufnr)
	vim.cmd("bdelete " .. current_buf)
end

vim.g.neotree_open = false

_G.toggle_neotree = function()
	if vim.g.neotree_open then
		vim.cmd("Neotree close")
		vim.g.neotree_open = false
	else
		vim.cmd("Neotree reveal")
		vim.g.neotree_open = true
	end
end
