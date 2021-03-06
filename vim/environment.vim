" vim: syntax=vim

" gvim {
    " Clean up the GUI in Gvim
    if has("gui_running")
        set guioptions-=T
        set guioptions-=m
        set guioptions+=LlRrb " bug?
        set guioptions-=LlRrb
        set guifont=monospace\ 9 " Way better than monospace
    endif
" }

" Theme {
    " Theme
    set shortmess+=I                       " Disable splash text
    set t_Co=256                           " Fix colors in the terminal
    "set guifont=Anonymous\ Pro\ 10         " Way better than monospace
    set laststatus=2                       " Always show status bar
    set noshowmode                         " Hide default mode string
    set mousemodel=popup                   " Enable context menu
" }

" Basic look and feel settings {
    " File Type detection
    filetype on
    filetype plugin on
    filetype plugin indent on

    " Allow backspacing before the insert point
    set backspace=indent,eol,start

    " Turn off matching parens :(
    " I'd like this working but is causing massive slow down
    " let loaded_matchparen = 1

    " speed things up a little bit
    "set ttyfast

    " Indentation settings
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    "set ignorecase
    set smartcase

    " Set Auto-indent options
    "set cindent
    "set smartindent
    set autoindent

    " Syntax highlighting
    syntax on

    " Enable Code Folding
    set foldenable
    set foldmethod=indent
    set foldlevelstart=5

    " Highlight the cursorline
    if exists("g:plugins_installed")
        " Disabled cursor line
        " I'd like this working but is causing massive slow down
        set cursorline
    endif

    " Spell checking
    "set spell

    " Show lines that exceed 80 characters
    "match ErrorMsg '\%80v.\+'
    highlight ColorColumn ctermbg=238 guibg=#444444
    set colorcolumn=80

    " Show whitespaces
    set listchars=tab:▸\ 
    set list

    " Line Numbers
    set number

    " Show commands
    set showcmd

    " Show a status bar
    set ruler
    set laststatus=2

    " Show Tab Bar
    set showtabline=2

    " Set Search options highlight, and wrap search
    set hls is      " highlight search text throughout the document.
    set wrapscan    " wrap the scan around the document
    "set ic          "ignore case in search
 
    " Keeps an automatic backup
    "set backup          " Enable Backups
    "set backupext=.bak  " Add .bak extension to modified files
    "set patchmode=.orig " Copy original file to with .orig extension Before saving.
" }
