
_G.close_and_go_right = function()
    local current_buf = vim.api.nvim_get_current_buf()
    local next_buf = nil
    local buf_list = vim.api.nvim_list_bufs()

    -- Найдем следующий буфер
    for i, buf in ipairs(buf_list) do
        if buf == current_buf and i < #buf_list then
            next_buf = buf_list[i + 1]
            break
        end
    end

    -- Если следующего буфера нет, возьмем предыдущий
    if not next_buf then
        for i, buf in ipairs(buf_list) do
            if buf == current_buf and i > 1 then
                next_buf = buf_list[i - 1]
                break
            end
        end
    end

    -- Удаляем текущий буфер
    vim.api.nvim_buf_delete(current_buf, {})

    -- Переходим к следующему буферу
    if next_buf then
        vim.api.nvim_set_current_buf(next_buf)
    end
end
