call plug#begin('~/.config/nvim/plugged')

"Func. for deoplete
function! DoRemote(arg)
	UpdateRemotePlugins
endfunction

Plug 'tpope/vim-surround'					"Surrounding stuff
Plug 'tpope/vim-sensible'					"Sensible defaults
Plug 'ctrlpvim/ctrlp.vim'					"Fuzzy finder
Plug 'vim-airline/vim-airline'					"Status line
Plug 'vim-airline/vim-airline-themes'				"Status line themes, so that it looks like monokai
Plug 'sickill/vim-monokai'					"Monokai theme
Plug 'Raimondi/delimitMate'					"Automatic closing brackets
Plug 'elixir-lang/vim-elixir'					"Elixir lang config files
Plug 'Shougo/deoplete.nvim', {'do': function('DoRemote')}	"Deoplete - autocomplete

call plug#end()

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 	"Cursor in insert mode
let mapleader = "\<Space>" 		"Leader is space
set number				"Line numbers
set hlsearch				"Highlight searched stuff
set nowrap				"No wrapping please
colorscheme monokai			"Monokai colorscheme

let g:airline_left_sep=''		"Airline separators set to none
let g:airline_right_sep=''

"CtrlP mappings
map <Leader>t :CtrlP<CR>

"Move around splits with alt + {h, j, k, l} including terminal
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

"Use deoplete
let g:deoplete#enable_at_startup = 1
