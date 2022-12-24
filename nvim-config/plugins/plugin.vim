" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Icons
    Plug 'ryanoasis/vim-devicons'
    "ColorScheme
    Plug 'joshdick/onedark.vim'
    Plug 'tomasr/molokai'
    Plug 'sainnhe/sonokai'

    "Airline
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline-themes'
    "Plug 'enricobacis/vim-airline-clock'


    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'frazrepo/vim-rainbow'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'github/copilot.vim'

    "Comment
    Plug 'preservim/nerdcommenter'
	 "CtrlSF
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'alvan/vim-closetag'
	Plug 'airblade/vim-gitgutter'

	"gitlens
	Plug 'tveskag/nvim-blame-line'

	" a simple, unified, single tabpage interface that lets you easily review all changed files for any git rev.
	Plug 'sindrets/diffview.nvim'
	Plug 'nvim-lua/plenary.nvim'	
    Plug 'vim-autoformat/vim-autoformat'
call plug#end()