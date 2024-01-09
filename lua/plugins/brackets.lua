local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    priority = {
        [''] = 110,
        lua = 210,
    },
    -- Цвета для окраски скобок
    highlight = {
        'RainbowDelimiterWhite',  -- Белый (исп. для одинарных скобок, остальные скобки окрашивают следующие цвета по очереди для их вложенности)
        'RainbowDelimiterYellow', -- Жёлтый
        'RainbowDelimiterBlue',   -- Синий
        'RainbowDelimiterOrange', -- Оранжевый
        'RainbowDelimiterGreen',  -- Зелёный
        'RainbowDelimiterViolet', -- Фиолетовый
        'RainbowDelimiterRed',    -- Красный
    },
}
