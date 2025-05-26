set number relativenumber nowrap nowrapscan virtualedit=all

tnoremap <esc><esc> <C-\><C-n>
nnoremap <PageDown> zM/{{{<cr>:<esc>zozt<C-y>
nnoremap <PageUp> zM?{{{<cr>:<esc>zozt<C-y>

" colorscheming {{{
set background=dark termguicolors
colorscheme gruvbox
highlight! link Folded LineNr

lua << EOF
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }) -- Enable opacity
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }) -- Enable opacity
EOF
" }}}

" vim: fdm=marker
