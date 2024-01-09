require'colorizer'.setup()

-- !ПРИМЕРЫ НАСТРОЙКИ ДАННОГО РАСШИРЕНИЯ! --

--[[
-- Настройка конфигурации для <html>, для остальных исп. стандартную конфигурацию
require 'colorizer'.setup {
  'css';
  'javascript';
  html = {
    mode = 'foreground';
  }
}
--]]


--[[
-- Исп. стандартную конфигурацию для всех файлов, кроме тех, которые вы хотите настроить
require'colorizer'.setup {
  '*'; -- Стандартная настройка для всех файлов, кроме переопределённых ниже
  css = { rgb_fn = true; }; -- Включить синтаксический анализ функций rgb(...) в css
  html = { names = false; } -- Отключить анализ «имен», таких как Blue или Grey
}
--]]


--[[
СТАНДАРТНЫЕ ЗНАЧЕНИЯ ПАРАМЕТРОВ:
  • RGB = true;          -- Шестнадцатеричные коды (hex codes) #RGB
  • RRGGBB = true;       -- Шестнадцатеричные коды (hex codes) #RRGGBB
  • names = true;        -- Отображение цветов по «кодовому названию» (Например, Blue, то есть синий)
  • RRGGBBAA = false;    -- Шестнадцатеричные коды (hex codes) #RRGGBBAA
  • rgb_fn = false;      -- Функции CSS rgb() и rgba()
  • hsl_fn = false;      -- CSS-функции hsl() и hsla()
  • css = false;         -- Активация всех функций CSS: rgb_fn, hsl_fn, имена, RGB, RRGGBB
  • css_fn = false;      -- Включить все *функции* CSS: rgb_fn, hsl_fn
  • mode = 'background'; -- Режим отображения

РЕЖИМЫ (mode):
  • foreground: устанавливает цвет текста переднего плана
  • background: устанавливает цвет фона текста
--]]
