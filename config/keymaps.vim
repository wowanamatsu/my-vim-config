let mapleader = " "
" "----------------------------------------------------
nnoremap <C-s> :w<CR> " Salvar com Ctrl+S
nnoremap <leader>e :20Lex <CR>
nnoremap <leader>t :terminal <CR>
nmap <leader>cs :let @/='' <CR>
" "----------------------------------------------------
" Fecha pares
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" "----------------------------------------------------
vnoremap " c""<esc>P
vnoremap ' c''<esc>P
vnoremap ( c()<esc>P
vnoremap [ c[]<esc>P
vnoremap { c{}<esc>P
" "----------------------------------------------------
" inoremap ss <esc>:update<CR>a
" "----------------------------------------------------
" Movimenta um bloco selecionado
vmap < <gv
vmap > >gv
" "----------------------------------------------------
" Rolagem de meia pagina
nmap <c-down> <c-d>zz
imap <c-down> <c-d>zz
nmap <c-up> <c-u>zz
imap <c-up> <c-u>zz
" "----------------------------------------------------
" "----------------------------------------------------
" "----------------------------------------------------
" "----------------------------------------------------
" "----------------------------------------------------
" "----------------------------------------------------