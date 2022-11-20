require('plugins')

vim.cmd([[
    if (empty($TMUX))
        if (has("nvim"))
            let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        endif
        if (has("termguicolors"))
            set termguicolors
        endif
    endif
]])


vim.o.background = "dark"
vim.cmd([[
    colorscheme gruvbox
    let g:gruvbox_transparent_bg=1
    highlight Normal ctermbg=NONE guibg=NONE
]])

vim.cmd([[
    source ~/.vimrc
]])

--require('lspconfig').clangd.setup{}
--require('lspconfig').jdtls.setup{}
require('lsp')

require('nvimcmp')

require('lualine').setup {
    options = { theme = 'gruvbox' }
}
