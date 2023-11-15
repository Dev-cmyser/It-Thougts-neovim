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
-- 			-- Если текущий буфер найден, закрываем его
-- 			vim.cmd("bdelete " .. current_buf)
--
-- 			if vim.b.cursor_pos then
-- 				vim.api.nvim_win_set_cursor(0, vim.b.cursor_pos)
-- 			end
-- 			-- Переходим к следующему буферу справа, если он существует
-- 			if i < #buf_list then
-- 				vim.cmd("buffer " .. buf_list[i + 1].bufnr)
-- 			else -- Иначе переходим к предыдущему буферу слева
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

	-- Сохраняем текущую позицию курсора для текущего буфера
	-- _G.cursor_positions[current_buf] = vim.api.nvim_win_get_cursor(0)

	-- Находим следующий буфер
	local next_bufnr
	for i, buf in ipairs(buf_list) do
		if buf.bufnr == current_buf then
			next_bufnr = buf_list[i % #buf_list + 1].bufnr
			break
		end
	end

	-- Переходим к следующему буферу и закрываем текущий
	vim.cmd("buffer " .. next_bufnr)
	vim.cmd("bdelete " .. current_buf)

	-- Восстанавливаем позицию курсора для нового буфера, если она была сохранена
	-- local new_cursor_pos = _G.cursor_positions[next_bufnr]
	-- if new_cursor_pos then
	-- 	local win_id = vim.fn.bufwinid(next_bufnr)
	-- 	if win_id ~= -1 then
	-- 		-- Убедимся, что позиция курсора находится в пределах нового буфера
	-- 		local line_count = vim.api.nvim_buf_line_count(next_bufnr)
	-- 		new_cursor_pos[1] = math.min(new_cursor_pos[1], line_count)
	-- 		local col_count = #vim.api.nvim_buf_get_lines(next_bufnr, new_cursor_pos[1] - 1, new_cursor_pos[1], true)[1]
	-- 		new_cursor_pos[2] = math.min(new_cursor_pos[2], col_count)
	-- 		vim.api.nvim_win_set_cursor(win_id, new_cursor_pos)
	-- 	end
	-- end
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
