" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" See https://github.com/junegunn/vim-plug#usage
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'



	" Make sure you use single quotes
	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/seoul256.vim'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()



" Unified color scheme (default: dark)
colo seoul256

" See https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='simple'



" Backspace behaviour... Oh, Vim. See https://vi.stackexchange.com/a/2163
set backspace=indent,eol,start
