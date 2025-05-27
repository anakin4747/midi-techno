set number relativenumber nowrap virtualedit=all

tnoremap <esc><esc> <C-\><C-n>
nnoremap ZZ :w<bar>bd<CR>
nnoremap <PageDown> zM/{{{<cr>zozt<C-y>
nnoremap <PageUp> zM?{{{<cr>zozt<C-y>

" colorscheming
set background=dark termguicolors
colorscheme gruvbox
highlight! link Folded LineNr

lua << EOF
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }) -- Enable opacity
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }) -- Enable opacity
require('nvim-treesitter.configs').setup({ highlight = { enable = true }})
EOF
