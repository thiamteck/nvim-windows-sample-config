" General Configurations

" must be first line
set nocompatible

" Installation with virtualenv prompt warning during :checkhealth, install
" neovim in global instead
let g:python3_host_prog='C:/Python36-32/python.exe'
let g:python_host_prog='C:/Python27/python.exe'

" search highlight set to yellow
"hi Search ctermbg=3	
"hi MatchParen cterm=bold ctermbg=none
"

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'

Plug 'vim-scripts/highlight.vim'
Plug 'Townk/vim-autoclose'

Plug 'neomake/neomake'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-wordy'
Plug 'gabrielelana/vim-markdown'

call plug#end()

set termencoding=utf-8
set encoding=utf-8
set nowrap
set showmatch		" Show matching brackets.
set hlsearch		" highlight all matches
set number  		" show line number

set mouse=a         " not fixed yet

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4	" see multiple spaces as tabstops so <BS> does the right thing


" full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing). 
call neomake#configure#automake('nrwi', 500)

" Tagbar configuration
let g:tagbar_autofocus = 1

" Limelight configurations
" Color name (:help cterm-colors) or ANSI code 
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color 
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 0

" Key Mapping
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Color scheme  related configuration, TODO: find out if it is best practice
" to define at the end

" Vim-Airline Configuration 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1


"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

set background=dark
colorscheme hybrid
