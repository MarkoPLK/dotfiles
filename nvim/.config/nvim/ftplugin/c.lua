vim.opt_local.tabstop = 8
vim.opt_local.softtabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.expandtab = true

vim.cmd([[
func Eatchar(pat)
        let c = nr2char(getchar(0))
        return (c =~ a:pat) ? '' : c
endfunc
]])

if vim.bo.filetype == "c" then
        vim.opt_local.makeprg = "gcc -g -o %:p:r %"

        vim.cmd([[
                iabbr <buffer> FF for(i = 0; i <; i++)<Left><Left><Left><Left><Left><Left>
        ]])
end

vim.keymap.set("n", "gh", "<cmd>:LspClangdSwitchSourceHeader<CR>", { desc = "Switch between source/header", buffer = true })
