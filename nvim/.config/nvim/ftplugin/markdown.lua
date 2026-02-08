-- ~/.config/nvim/ftplugin/markdown.lua

-- ================================
-- Indentación y tabs
-- ================================
vim.opt_local.expandtab = true       -- usar espacios en lugar de tabs
vim.opt_local.shiftwidth = 2         -- indentación de 2 espacios
vim.opt_local.softtabstop = 2
vim.opt_local.tabstop = 2
vim.opt_local.autoindent = true      -- heredar indent de la línea anterior
vim.opt_local.smartindent = true     -- indent inteligente en listas y bloques

-- ================================
-- Visualización de texto
-- ================================
vim.opt_local.textwidth = 119          -- límite visual de línea
vim.opt_local.wrap = true             -- ajustar líneas visualmente
vim.opt_local.linebreak = true        -- cortar línea en palabra completa
vim.opt_local.showbreak = "… "        -- marcador visual al continuar línea

-- ================================
-- Ortografía y búsqueda
-- ================================
vim.opt_local.spell = true            -- activar corrector ortográfico
vim.opt_local.spelllang = "en"        -- idioma del corrector, cambiar si se desea

-- ================================
-- Opciones de formateo
-- ================================
-- Ajustes de 'formatoptions' para Markdown
local fo = vim.opt_local.formatoptions
fo:append("t")    -- auto-wrap según textwidth
fo:remove("c")    -- no comentar automáticamente nuevas líneas
fo:remove("r")    -- no insertar prefijo de comentario al pulsar Enter
fo:remove("o")    -- no insertar prefijo de comentario al usar o/O

-- ================================
-- Opciones de sintaxis
-- ================================
vim.cmd("syntax on")                   -- resaltar cabeceras, listas, enlaces

