set wildmenu
set wildmode=longest:full,full
set wildignore+=*.pyc,*~,*.o
set smartcase
set ignorecase
set incsearch
set path+=**
syntax on
filetype plugin on
filetype indent on
set ai
set si
set autoread

call plug#begin('~/.local/share/nvim/plugged')

" Navigate files
Plug 'scrooloose/nerdtree'

" Autocomplete
Plug 'davidhalter/jedi-vim'

" Highlight all words matching what's under the cursor.
Plug 'osyo-manga/vim-brightest'

" Integrate Vim with Tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'jpalardy/vim-slime'

" Keybinds for dealing with "", '', (), {}, etc.
Plug 'tpope/vim-surround'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'

" Ctags integration.
Plug 'kien/ctrlp.vim'
nnoremap <silent> <Leader>B :CtrlP<CR>

Plug 'majutsushi/tagbar'  " adds tag window
nnoremap <silent> <Leader>b :TagbarToggle<CR>

Plug 'xolox/vim-easytags' " automatic tag generation
Plug 'xolox/vim-misc'

" DevOps Tools
Plug 'pearofducks/ansible-vim'  " YAML
Plug 'plasticboy/vim-markdown'  " Markdown
Plug 'hashivim/vim-terraform'   " Terraform
Plug 'elzr/vim-json'		" JSON

" Git
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'

" Python foldinig support.
Plug 'tmhedberg/SimpylFold'
Plug 'klen/python-mode'

" Snipmates
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
nnoremap <leader>sn :split ~/.vim/bundle/vim-snippets/snippets/<CR>
nnoremap <leader>SN :vsplit ~/.vim/bundle/vim-snippets/snippets/<CR>

call plug#end()

" Basic display settings
set termguicolors
syntax on
set relativenumber
set number
color molokai

" Create a column at 80 characters.
set colorcolumn=80
highlight ColorColumn ctermbg=Black
highlight ColorColumn guibg=#222222

" More natural split direction.
set splitbelow
set splitright

" Make tabs 4 spaces, but stil behave like tabs.
set tabstop=8
set expandtab
set shiftwidth=2
set softtabstop=4
set foldmethod=syntax

" set formatting for comments
set formatprg=par\ -w80jf

au BufNewFile,BufRead *.py let g:python_highlight_all = 1

" Remappings
nnoremap Y y$
inoremap <S-CR> <esc>j

" move line down one
nnoremap - ddp
nnoremap _ ddkP

" Quicker switching between splits.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Open specific files on the computer.
nnoremap <leader>rc :split  ~/.config/nvim/init.vim<cr>
nnoremap <leader>RC :vsplit ~/.config/nvim/init.vim<cr>

" Ctrl+A interferes with tmux.
nnoremap <Leader><C-x> <C-a>

" Autocorrect
iab retrun return
iab improt import
iab gloabl global
iab import\ import impot
iab ednl endl
