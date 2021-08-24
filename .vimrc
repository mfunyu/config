

set nu
syntax enable
set cindent
set binary

set incsearch
set ignorecase
set smartcase
set wrapscan

set noeol
set tabstop=4
set list listchars=tab:\￫\ ,space:·

inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

au FileType python setlocal tabstop=4 expandtab

autocmd BufWritePre * :%s/\s\+$//e

"autocmd ColorScheme * highlight Comment ctermfg=159 guifg=#1900ff
"autocmd ColorScheme * highlight Normal ctermfg=231 guifg=#1900ff
"autocmd ColorScheme * highlight Constant ctermfg=199 guifg=#1900ff
"autocmd ColorScheme * highlight Function ctermfg=190 guifg=#1900ff
"autocmd ColorScheme * highlight Identifier ctermfg=1 guifg=#1900ff
colorscheme default
colorscheme monokai
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

"color separation at line 80
au FileType c let &colorcolumn=join(range(81,999),",")
au FileType c hi ColorColumn ctermbg=235 guibg=#2c2d27
au FileType c hi ColorColumn ctermbg=NONE guibg=NONE

au FileType python let &colorcolumn=join(range(81,999),",")
au FileType python hi ColorColumn ctermbg=235 guibg=#2c2d27

hi cursorline cterm=underline ctermbg=NONE

"-------------------------------------------------------------------------------
"" aut_save
"-------------------------------------------------------------------------------
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

"-------------------------------------------------------------------------------
" vim-plug
"-------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

"-------------------------------------------------------------------------------
" mapleader
"-------------------------------------------------------------------------------
let mapleader = "\<Space>"

"-------------------------------------------------------------------------------
" fzf
"-------------------------------------------------------------------------------
set rtp+=/usr/local/opt/fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>4 :FZF ~/Desktop/42cursus<CR>
nnoremap <Leader>g :GFiles? <CR>
nnoremap <Leader>w :Windows <CR>
nnoremap <silent> <Leader>r :<C-u>silent call <SID>find_rip_grep()<CR>

function! s:find_rip_grep() abort
    call fzf#vim#grep(
        \   'rg --ignore-file ~/.ignore --column --line-number --no-heading --hidden --smart-case .+',
        \   1,
        \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
        \   0,
        \ )
endfunction

" deniteと合わせて上部に表示
let g:fzf_layout = { 'up': '~40%' }

" <C-]>でタグ検索
nnoremap <silent> <C-]> :call fzf#vim#tags(expand('<cword>'))<CR>

" fzfからファイルにジャンプできるようにする
let g:fzf_buffers_jump = 1