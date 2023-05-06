"general vim
set nocompatible
set ignorecase

" filetypes
filetype plugin on
syntax on

au! BufRead,BufNewFile *.c.ib setfiletype c
au! BufRead,BufNewFile *.h.ib setfiletype c
au! BufRead,BufNewFile *.cpp.ib setfiletype cpp
au! BufRead,BufNewFile *.hpp.ib setfiletype cpp
au! BufRead,BufNewFile *.go.ib setfiletype go

set omnifunc=syntaxcomplete#Complete


" colors
colorscheme habamax

hi Normal guibg=NONE ctermbg=NONE
hi LineNr ctermbg=white ctermfg=grey
hi LineNrAbove ctermbg=234 ctermfg=242
hi LineNrBelow ctermbg=234 ctermfg=242
hi NonText ctermfg=242
hi SpecialKey ctermfg=242
hi clear CursorLine
hi CursorLine ctermfg=none ctermbg=234
hi clear CursorLineNr
hi CursorLineNr ctermfg=246 ctermbg=236
hi MatchParen term=reverse cterm=bold,underline ctermfg=168 ctermbg=16


" editor display
set tabstop=4
set shiftwidth=4

set list
set listchars=tab:>\ ,space:.,eol:\ 
set fillchars=eob:-

set number relativenumber
set numberwidth=3
set cursorline

set laststatus=2

"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"


" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 17


" input
"noremap c k
"noremap t j
"noremap n l

set paste
