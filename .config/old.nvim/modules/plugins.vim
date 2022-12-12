" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	"Plug 'overcache/NeoSolarized'
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	"Plug 'ayu-theme/ayu-vim'
	"Plug 'nocksock/bloop-vim'
	"Plug 'fxn/vim-monochrome'
	Plug 'tpope/vim-eunuch' "Unix utilitaries, such as: :Delete, :Chmod, :Sudoedit,:Rename
	Plug 'sonph/onehalf', {'rtp': 'vim'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"	Plug 'romgrk/barbar.nvim' it's bug
call plug#end()
" set airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme='catppuccin'
"let g:airline#extensions#tabline#enabled = 1
"let g:webdevicons_enable_airline_tabline = 1
"let g:webdevicons_enable_airline_statusline = 1
let g:airline_section_z = '(%l:%c)'
let g:airline_section_warning=''
set termguicolors
