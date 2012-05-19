

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
" TABULARIZE SHORTCUTS
map <leader>>= :Tabularize /^.\{-}=\@=
map <leader>>: :Tabularize /^.\{-}:\@=


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

" Highlight current line
set cursorline

" Map leader
let mapleader=","


" ======================================
" NEXT/PREV BUFFERS
map <leader>[ :bp<CR>
map <leader>] :bn<CR>
map <leader><leader> <C-^>


" ======================================
" VISUAL UP/DOWN

map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge



" ======================================
" GROUPON-APP SPECIFIC CTRLP MAPPINGS

map <leader>gc :CtrlPClearCache<cr>\|:CtrlP app/controllers<cr>
map <leader>gv :CtrlPClearCache<cr>\|:CtrlP app/views<cr>
map <leader>gm :CtrlPClearCache<cr>\|:CtrlP app/models<cr>
map <leader>gh :CtrlPClearCache<cr>\|:CtrlP app/helpers<cr>
map <leader>gj :CtrlPClearCache<cr>\|:CtrlP public/javascripts<cr>
map <leader>gjj :CtrlPClearCache<cr>\|:CtrlP public/coffeescripts<cr>
map <leader>gs :CtrlPClearCache<cr>\|:CtrlP public/stylesheets<cr>


" ======================================
" CTRL-P

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store$',
  \ }

map <leader>t :CtrlP<CR>
map <leader>/ :CtrlPBuffer<CR>
map <leader>r :CtrlPMRU<CR>



" ======================================
" FILE NAVIGATION
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%



" ======================================
" WINDOW SIZING

" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999



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

