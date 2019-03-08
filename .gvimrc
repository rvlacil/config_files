set nocompatible
set modelines=5
colorscheme peachpuff
set number
set relativenumber
set bs=indent,eol,start
" lepsi podpora copy/paste v xtermu
" set ttyfast

" zapnuti barvicek
syntax enable
" doplnovani jako na command line
set wildmenu
" nastaveni doplnovani tabulatorem ve stylu command line
set wildmode=list:longest
set wildignore=*.o,*.class,*.dvi,*.d,*.pyc

set textwidth=0
"set encoding=iso-8859-2
set fileencodings=ucs-bom,utf-8,iso-8859-2,cp-1250
"set fenc=iso-8859-2
set fenc=utf-8

" Posunovani v insert modu
inoremap <C-k> <up>
inoremap <C-j> <down>
inoremap <C-h> <left>
inoremap <C-l> <right>

" neco pro latex
"filetype plugin on
"filetype indent on
"set grepprg=grep\ -nH\ $*
"imap <A-J> <Plug>Tex_LeftRight

" zobrazovani prikazu
set showcmd
" inteligenti odsazovani
set cindent

" velikost odsazeni
set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab

" ignorovani velikosti pri hledani, ale ponechani u i_C-N, "i_C-P
" smartcase zapne casesensitive pro vyraz s velkymi pismenky
set ignorecase
set smartcase

" rychle rolovani pomoci ctrl-j, ctrl-k
noremap <C-k> 2<c-y>
noremap <C-j> 2<c-e>

" save na f2
noremap <f2> :w<cr>
" prepinani alternativ
noremap <f3> :A<cr>
" ukonceni
noremap <f10> :q<cr>
" make na f9
noremap <f9> :make<cr>
inoremap <f2> <esc>:w<cr>a
inoremap <f10> <esc>:q<cr>

"--------------------------------------------------
"" TAB smart completion s noignorecase
"--------------------------------------------------
"function InsertTabWrapper()
"    setlocal noic
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"
"function SetIC()
"    setlocal ic
"    return ""
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr><c-r>=SetIC()<cr>

" MAKEFILE
"au FileType make setlocal noexpandtab softtabstop=0

"
" Odstraneni ikon
"
"unmenu ToolBar
"unmenu! ToolBar 


"
" Default compiler
"
"set makeprg=scons
"
"Disable beeping
set vb t_vb=

set hlsearch
