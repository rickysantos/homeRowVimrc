set ruler laststatus=2 number title "hlsearch "incsearch
"number of visual spaces per TAB when it opens and reads a file
" Pathogen

execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

"for fountain which is a file exension for screenwriting 
au BufRead,BufNewFile *.fountain set filetype=fountain
 
set tabstop=2 
" number of spaces in tab when editing
set softtabstop=4
"add highlighting
syntax on
" visual autocomplete for command menu
set wildmenu 
"set intellisense on php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"map sv to Escape
:imap sv <Esc>
:cmap sv <Esc>
:cmap xx <Del>
"this is undo
:imap ff <CR>
:cmap ff <CR>
"this is redo
:nmap tr <C-r>
:cmap tr <C-r>

"to command : in command line 
:nmap ttj <S-:> 


"this hits p from insert mode
:imap hh p
"this hits p from command mode
:cmap hh p
"this is the mapleader so when you hit tt get additional functionality
:let mapleader = "tt"

"tt l from insert mode will put in a quote.
imap <leader>l "
"tt ll from insert mode will put you in between double quotes
imap <leader>ll ""<ESC>i

"tt k from insert mode will put in a quote.
imap <leader>k '
"tt kk from insert mode will put you in between single quotes
imap <leader>kk ''<ESC>i

"tt y from insert mode will open left curly brace
imap <leader>y {
"tt yy from insert mode will open curly braces and put you in between
imap <leader>yy {}<ESC>i
"tt yyy from insert mode will open right curly brace
imap <leader>yyy }

"tt u from insert mode will open left curly brace
imap <leader>u [
"tt uu from insert mode will open square brackets and put you in between
imap <leader>uu []<ESC>i
"tt uuu from insert mode will open right curly brace
imap <leader>uuu ]

" tt i will open \  
imap <leader>i \
" tt o will open |  
imap <leader>o \|

" tt r from insert mode will open left brace
imap <leader>r (
" tt rr from insert mode will brackets and put you in between
imap <leader>rr ()<ESC>i
" tt r from insert mode will open right brace
imap <leader>rrr )

" tt h to ; 
imap <leader>h ;
" tt l to : 
imap <leader>j :
" tt 5 to -
imap <leader>5 -
" tt 6 to -
imap <leader>6 _
cmap <leader>6 _
" tt 7 to -
imap <leader>7 +
" tt 8 to -
imap <leader>8 =
" tt m to /
imap <leader>m /
cmap <leader>m /
" tt n to ?
imap <leader>n ?
" tt b to .
imap <leader>b .
cmap <leader>b .
" tt v to ,
imap <leader>v ,
" tt z to <
imap <leader>z <
" tt x to >
imap <leader>x >
"tt c from insert mode will open <>  and put you in between
imap <leader>c <><ESC>i
" move to beginning/end of line
nnoremap B ^
nnoremap E $
				" $/^ doesn't do anything just to remind me 
nnoremap $ <nop>
nnoremap ^ <nop>
"It visually selects the block of characters you added last time you were in INSERT mode.
nnoremap gV `[v`]
"switches to letters ex. thsi to this
nnoremap <silent> xoo xph 

"One adn two.
:iabbrev adn and
:iabbrev waht what
:iabbrev tehn then

"will select the word when you hit space bar from normal mode 
:map <space> viw

:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

