set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Linting
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf.vim'
"Cool status line 
Plugin 'itchyny/lightline.vim'
"YouCompleteMe
Plugin 'valloric/youcompleteme'
"Directory listing
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
" HTML Plugins
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'Raimondi/delimitMate'
"Color highlight
Plugin 'lilydjwg/colorizer'
"Extra colorschemes
Plugin 'rainglow/vim'
Plugin 'rafi/awesome-vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"Custom keymaps
cmap w!! w !sudo tee > /dev/null %

"Custom Commands
" CDC = Change to Directory of Current file
command CDC cd %:p:h

" Colorscheme
colo elflord

" Line numbers
set number

" Mouse emulation within vim 
set mouse=a
syntax enable

" Tabbing options
set shiftwidth=4 
set tabstop=4
set smarttab

" vim-Terminal configuration
set termwinsize=30*0
" new split panes start at the bottom. Default top
set splitbelow

" Autostart NerdTree when creating new file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Highlight Colors
highlight Pmenu ctermfg=15 ctermbg=53 
highlight PmenuSel ctermfg=7 ctermbg=54
highlight Todo ctermfg=16 ctermbg=3
highlight ALEWarning term=underline cterm=underline ctermfg=190 
highlight ALEStyleWarning term=underline cterm=underline ctermfg=190 
highlight ALEInfo term=underline cterm=underline ctermfg=190 

"YCM global config
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" lightline options
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'seoul256',
	\ }

" .rasi syntax highlighting
au BufNewFile,BufRead /*.rasi setf css

" Colorizer startup
let g:colorizer_startup = 1
let g:colorizer_maxlines = 10
