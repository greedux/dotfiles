source $VIMRUNTIME/vimrc_example.vim

set guioptions-=T  "remove toolbar
"set guioptions-=m  "remove menubar
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set autoindent
set smartindent
set cursorline
set nobackup

autocmd FileType python setlocal expandtab

" copy selected text to system clipboard:
vnoremap <C-c> "*Y :let @+=@*<CR>

set pastetoggle=<F5>

set splitbelow splitright

function! ToggleListMode()
	if &l:list
		set nolist
		match Normal '\s\+$'
	else
		set list
		match ErrorMsg '\s\+$'
	endif
endfunction

function! Toggle1337mode()
	if &l:list
		set nolist
		match Normal '\s\+$'
	else
		set list
		match ErrorMsg '\s\+$'
	endif
	if &l:number
		set nonumber
		match Normal '\s\+$'
	else
		set number
		match ErrorMsg '\s\+$'
	endif
endfunction

fun! RemoveEndSpaces()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

"automatically trim whitespace before writing a file...
"autocmd BufWritePre * :call RemoveEndSpaces()

" save keypress on split navigation:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"broken...
"nnoremap <C-PageUp> :tabprevious<CR>
"nnoremap <C-PageDown> :tabnext<CR>

" Disable auto commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <F1> :setlocal spell! spelllang=en_us<CR>

fixdel
set title
set backspace=indent,eol,start
set number
"set number relativenumber
syntax on
filetype on
"set background=light
set background=dark

"colorscheme eighties
colorscheme solarized
let g:solarized_contrast="low"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_hitrail=1    "default value is 0

if has("gui_running")
set guifont=MesloLGS\ NF\ 13
endif

:set nolist    " show extra chars...
:set listchars=eol:↲,tab:→░,trail:␣,extends:»,precedes:«,nbsp:*
":set listchars=eol:↲,tab:→░,trail:·,extends:»,precedes:«,nbsp:␣
"nbsp (ctrl-v x a 0 (0xa0)):            
" trailing whitespace
:au InsertEnter * match ErrorMsg '\s\+$'
:match ErrorMsg '\s\+$'     " such as:
	"trailing tabs:			
    "trailing whitespace:   

"function! Whitespace()
"    if !exists('b:ws')
"        highlight Conceal ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
"        highlight link Whitespace Conceal
"        let b:ws = 1
"    endif
"    syntax clear Whitespace
"    syntax match Whitespace / / containedin=ALL conceal cchar=␣
"    setlocal conceallevel=2 concealcursor=c
"endfunction
"augroup Whitespace
"    autocmd!
"	autocmd BufEnter,WinEnter * call Whitespace()
"augroup END

set laststatus=2
"set statusline=%{g:NyanModoki()}
"let g:nyan_modoki_select_cat_face_number=2
"let g:nyan_modoki_animation_enabled=1
let g:lightline = { 'colorscheme':
"\ 'wombat',
"\ 'darcula',
"\ 'deus',
"\ 'material',
"\ 'molokai',
\ 'nord',
"\ 'OldHope',
"\ 'one',
"\ 'PaperColor_dark',
"\ 'powerline',
"\ 'srcery_drk',
"\ 'Tomorrow_Night_Eighties',
"\ 'Tomorrow_Night',
"\ 'solarized',
"\ 'jellybeans',
"\ 'seoul256',
\ }

"autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

"let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
"let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
"let g:lightline.component_type   = {'buffers': 'tabsel'}
"let g:lightline#bufferline#show_number  = 1
"let g:lightline#bufferline#shorten_path = 0
"let g:lightline#bufferline#unnamed      = '[No Name]'

"call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline'
"call plug#end()

let g:airline_powerline_fonts = 1
set showtabline=1
let g:airline#extensions#tabline#enabled = 1
set noshowmode

"let g:airline_theme='simple'
"let g:airline_theme='serene'
let g:airline_theme='minimalist'
"let g:airline_theme='silver'
"let g:airline_theme='atomic'
"let g:airline_theme='behelit'
"let g:airline_theme='cobalt2'
"let g:airline_theme='desertink'
"let g:airline_theme='distinguished'
"let g:airline_theme='kaisi'
"let g:airline_theme='night_owl'
"let g:airline_theme='papercolor'
"let g:airline_theme='qwq'
"let g:airline_theme='ravenpower'
"let g:airline_theme='seagull'
"let g:airline_theme='sierra'
"let g:airline_theme='sol'
"let g:airline_theme=''

