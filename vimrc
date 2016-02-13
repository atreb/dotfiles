"-------------------------------------------------------------------------------
" Below are prerequisites that needs to be execute that needs to be executed:
" git clone https://github.com/VundleVim/Vundle.vim.igt ~/.vim/bundle/Vundle.vim
" mkdir ~/.vim/_backup
" mkdir ~/.vim/_tmp
" brew install the_silver_surfer or pacman -S the_silver_surfer
" Below are prerequisites for syntastic checkers
"   npm install -g eslint babel-eslint eslint-plugin-react jsonlint
"-------------------------------------------------------------------------------

set nocompatible                "use vim, no vi defaults, required for vundle
filetype off                    "required for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       "let vundlue manage vundle
Plugin 'bling/vim-airline'          "lean status bar
Plugin 'flazz/vim-colorschemes'     "downloads jellybean color scheme along with few others
Plugin 'easymotion/vim-easymotion'  "moving through vim text with speed
Plugin 'sjl/gundo.vim'              "graphical undo tree tranversal plugin
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'     "visual git diff
Plugin 'tomtom/tcomment_vim'        "easy commenting
Plugin 'scrooloose/syntastic'       "syntax checking
Plugin 'othree/html5.vim'               "HTML5 + inline SVG omnicomplete function, indent and syntax for Vim
call vundle#end()
filetype plugin indent on       "lets vim identify filetypes and load plugins for them. Also sets indenting intelligence based on syntax rules for the file type

syntax enable                   "enables syntax highlighting
colorscheme jellybeans          "sets jellybeans colorscheme from the flaxx/vim-colorschemes
let mapleader = ","             "maps leader to ,
set laststatus=2                "for airline plugin to see the status at all times instead of the default in splits
set hidden
set number                      "show line numbers
set wrap                        "enables visual line wrapping
set textwidth=0 wrapmargin=0    "turns off physical line wrapping (ie: automatic insertion of newlines)
set cursorline                  "highlights line at cursorA
set wildmenu                    "visual autocomplete for command menu using tab, use arrow keys to nagivate
set showmatch                   "highlight matching parenthesis like characters [{()}]
set ruler                       "show line and coumn number in statusline
set modifiable                  "allows plugins like gundo to modify buffer
set encoding=utf-8              "set default encoding to UTF-8
set tabstop=2                   "tab is 2 spaces
set shiftwidth=2                "indent with >> or >> is 2 spaces
set expandtab                   "use spaces instead of tab
set backspace=indent,eol,start  "backspace through everything in insert mode
set list                        "show invisible chars eg. tabs, trailing spaces, line
set listchars=tab:>.,trail:.,extends:>,precedes:\<
set hlsearch                    "highlight all occurances of search matches
set incsearch                   "move cursor to the matched string while typing search pattern
set ignorecase                  "case insensitive search
set smartcase                   "case insensitive search unless there is atleast one captical letter
set pastetoggle=<F2>            "enable/disable paste mode using F2
set foldenable                  "enables folding
set foldmethod=indent           "folding based on indent level
set foldlevelstart=6            "starting fold level for opening new buffer. Can take values 0 tp 99. O means all folds will be closed. 99 means all folds will be open.
set foldnestmax=6               "folding on nth level and no folding before. Helps in guarding against too many folds.
set backupdir=~/.vim/_backup//  "where to put backup files. Double trailing / ensures relative paths are expanded to create unique backup files
set directory=~/.vim/_tmp//     "where to put swap files. No more annoying backup & swap files in working directory
set splitbelow                  "cause new split window to be at bottom
set splitright                  "causes new vertical split window to be on right
set statusline+=%#warningmsg#   "below 3 sets recommended for syntastic
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"plugin variables
let g:netrw_liststyle=3                           "nerdtree style for netrw
let g:netrw_preview=1                             "preview window shown in vertical split instead of horiz if value is 0. Default is 0
let g:airline#extensions#tabline#enabled = 1      "enables display of buffers when only one tab is open
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:gundo_preview_bottom=1    "sets the preview pane for gundo below current window instead of below graph
let g:syntastic_javascript_checkers = ['eslint']  "instructs syntastic to use eslint for javascript
let g:syntastic_json_checkers = ['jsonlint']      "instructs syntastic to use eslint for json
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30'         "instructs ctrlp to order search results top to bottom with more results than default
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'       "instructs ctrlp to use ag for lightning fast results
let g:ctrlp_use_caching = 0                       "ag is fast enough that ctrlp does not need cache

"shortcut for removing search highlight
nnoremap <leader><space> :nohlsearch<cr>
"shortcut for easymotion bidirectional search
nmap s <Plug>(easymotion-s2)
"shortcut to toggle gundo
nnoremap <leader>u :GundoToggle<cr>
"shortcuts for buffer management
nnoremap <left> :bprev<cr>
nnoremap <right> :bnext<cr>
nnoremap <up> :buffers<cr>:buffer<space>
nnoremap <down> <C-^>

