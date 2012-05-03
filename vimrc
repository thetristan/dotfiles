

" ======================================
" PATHOGEN

call pathogen#infect()
call pathogen#helptags()



" ======================================
" THEME SETTINGS

" Solarized dark
let g:solarized_contrast="high"    "default value is normal
syntax enable
set background=dark
colorscheme solarized



" ======================================
" WHITESPACE MANAGEMENT

" Removes trailing spaces
function! TrimWhiteSpace()
%s/\s*$//
''
:endfunction

set list listchars=trail:.,extends:>
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>



" ======================================
" EDITING SETTINGS

" Show status line
set ls=2
set ruler

" Disable backups
set nobackup
set noswapfile

" Buffer control
set hidden

" Tab settings
set cindent
set cinkeys=0{,0},0),:,!^F,o,O,e
set autoindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set list listchars=tab:··,trail:·

" By default, don't wrap and show numbers
set nowrap
set number
set linebreak
set nolist
set showbreak=\ \ \ \

" Map leader
let mapleader=","




" ======================================
" CTRL-P

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store$',
  \ }

map <D-t> :CtrlP<CR>
imap <D-t> <C-c>:CtrlP<CR>
map <D-/> :CtrlPBuffer<CR>
imap <D-/> <C-c>:CtrlPBuffer<CR>
map <D-r> :CtrlPMRU<CR>
imap <D-r> <C-c>:CtrlPMRU<CR>



" ======================================
" TAGLIST

let Tlist_Show_Menu = 1
let Tlist_Use_Right_Window = 1

nnoremap <silent> <C-`> :TlistToggle<CR>



" ======================================
" NERDTREE

let NERDTreeChDirMode=2
nnoremap <C-t> :NERDTreeToggle .<CR>



" ======================================
" GUI OPTIONS

if has("gui_running")
  set guioptions=egmt
endif

