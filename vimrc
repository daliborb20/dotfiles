" This is my personal vim config.
"
" Tom Oram - http://github.com/tomphp - <tom@x2k.co.uk>
"
" Inspired by:
" - EvanDotPro https://github.com/EvanDotPro/vim-configuration
" - Gianluca Arbezzano https://github.com/gianarb/.dotfiles
" - and others...

if isdirectory($HOME."/.vim")
    let g:plugins_installed = 1

    source $HOME/.dotfiles/vim/bundles.vim
    source $HOME/.dotfiles/vim/bundle_globals.vim
endif

source $HOME/.dotfiles/vim/globals.vim
source $HOME/.dotfiles/vim/functions.vim

source $HOME/.dotfiles/vim/environment.vim
source $HOME/.dotfiles/vim/keymappings.vim
    
source $HOME/.dotfiles/vim/coffeescript.vim
source $HOME/.dotfiles/vim/cpp.vim
source $HOME/.dotfiles/vim/cucumber.vim
source $HOME/.dotfiles/vim/web.vim
source $HOME/.dotfiles/vim/javascript.vim
source $HOME/.dotfiles/vim/markdown.vim
source $HOME/.dotfiles/vim/php.vim
source $HOME/.dotfiles/vim/ruby.vim
source $HOME/.dotfiles/vim/scala.vim
source $HOME/.dotfiles/vim/text.vim
source $HOME/.dotfiles/vim/haskell.vim

source $HOME/.dotfiles/vim/filetypes.vim
source $HOME/.dotfiles/vim/testing.vim

" Use local vimrc if available
if filereadable(expand("./.vimpj.vim"))
    source ./.vimpj.vim
endif

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
