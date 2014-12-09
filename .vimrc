set nocompatible
filetype on    " Required
filetype plugin on " Enable filetype-specific plugins
" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

filetype plugin indent on " Required

set number
syntax enable
set background=dark
colorscheme base16-railscasts

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1
hi TabLineFill ctermfg=237 ctermbg=236
hi TabLine ctermfg=240 ctermbg=236
hi TabLineSel ctermfg=38 ctermbg=236

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline
set wildmenu " visual autocomplete for command menu

" search
set incsearch " search as characters are entered
set hlsearch " highlight matches

set t_Co=256
set encoding=utf-8
set cc=100
set bs=2

"Tab key bindings
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""
 let g:airline_theme             = 'tomorrow'
 let g:airline_enable_branch     = 1
 let g:airline_right_alt_sep = '◀'
 let g:airline_right_sep = '◀'
 let g:airline_left_alt_sep= '▶'
 let g:airline_left_sep = '▶'
 let g:airline_enable_syntastic  = 1
 let g:airline_powerline_fonts   = 1
 let g:airline_branch_prefix     = 'A'
 let g:airline_readonly_symbol   = 'RO'
 let g:airline_linecolumn_prefix = 'LN'
 set laststatus=2
" set guifont=InputMono
"
" "Split window movement
 map ,f :CtrlP 
 " Ruby autocomplete
 autocmd FileType ruby set omnifunc=rubycomplete
 autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
 autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
 autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
 highlight Pmenu ctermfg=255 ctermbg=236
 highlight PmenuSel ctermfg=38 ctermbg=236
 let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

 au! BufRead,BufNewFile *.json set filetype=json 
 " Java autocomplete
 autocmd Filetype java setlocal omnifunc=javacomplete#Complete
