vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Mover selección
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Traer línea inferior al final de la línea actual sin mover el cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Moverse por el fichero con el cursos centrado
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Buscar siguiente palabra centrado
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Pegar texto sin modificar el buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copiar en el clipboard del sistema
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>D", [["_D]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Reemplazar la palabra sobre el cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[y:%s/\<<C-r>"\>/<C-r>"/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Snippet error golang
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/markoplk/packer.lua<CR>");
vim.keymap.set("n", "<leader>vpr", "<cmd>e ~/.config/nvim/lua/markoplk/remap.lua<CR>");
vim.keymap.set("n", "<leader>vpa", "<cmd>e ~/.config/nvim/after/plugin/<CR>");
vim.keymap.set("n", "<leader>vps", "<cmd>e ~/.config/nvim/lua/markoplk/set.lua<CR>");

-- Turn of highlighting
vim.keymap.set("n", "<Esc><Esc>", vim.cmd.nohlsearch)

-- Tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Open files with vim in  ~/*
vim.keymap.set("n", "<leader>f", "<cmd>silent !tmux neww vim-projects<CR>");

-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })

vim.keymap.set('c', '%%', function()
        if vim.fn.getcmdtype() == ":" then
                return vim.fn.expand("%:h") .. "/"
        else
                return "%%"
        end
end, { expr = true})

-- Bye, bye
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
