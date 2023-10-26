
_G.close_and_go_right = function()
    local current_buf = vim.api.nvim_get_current_buf()
    local next_buf = nil
    local buf_list = vim.api.nvim_list_bufs()
   
-- Если только один буфер, просто возвращаемся и ничего не делаем
    if #buf_list == 1 then
        return
    end
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

