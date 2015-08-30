filetype indent plugin on

set nobackup " Don't backup
set nowritebackup " Write file in place
set noswapfile " Don't use swap files (.swp)
set autoread " Autoreload buffers
set nocompatible " Vim behavior, not Vi.
set autowrite " Auto save file
set rtp+=~/.vim/bundle/vundle
set bs=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8
set cindent " Automatic indent
set title " Set terminal title
"set autochdir " Auto chdir current opened file
set wildmenu " ?
set wildmode=list:longest,full " ?
set nomodeline " ?
set relativenumber
set showcmd " Display incomplete commands
set tabstop=1 " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2 " Number of spaces to use for each step of (auto)indent.
set expandtab " Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands
" and when 'autoindent' is on. To insert a real tab when
" 'expandtab' is on, use CTRL-V <Tab>.
set smarttab " When on, a <Tab> in front of a line inserts blanks
" according to 'shiftwidth'. 'tabstop' is used in other
" places. A <BS> will delete a 'shiftwidth' worth of space
" at the start of the line.
set ff=unix
set number
set showmatch
set hlsearch
set incsearch
set ignorecase " Ignore case in search patterns #search#i
set backspace=2 " Influences the working of <BS>, <Del>, CTRL-W
" and CTRL-U in Insert mode. This is a list of items,
" separated by commas. Each item allows a way to backspace
" over something.
set ruler " Show the line and column number of the cursor position,
" separated by a comma.
" set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

syntax enable

" Begin color scheme
set background=dark
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
colorscheme base16-railscasts

let g:user_emmet_expandabbr_key = '<Tab>'

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
" End color scheme

call vundle#rc()
" Key Bindings
vnoremap <C-C> :w !xsel -b<CR><CR>
nmap <silent> <F3> :NERDTreeToggle<CR>
inoremap jk <Esc>

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'ervandew/supertab'
Bundle 'mattn/emmet-vim'
Bundle 'noprompt/vim-yardoc'
