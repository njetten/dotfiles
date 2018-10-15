call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'                                       " Git tooling
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   " Completion framework

Plug 'fatih/vim-go'
Plug 'rodjek/vim-puppet'

Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" Visuals
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme tender

set background=dark     " Use colors that look good on dark background
set breakindent 		" Every wrapped line will continue visually indented 
set copyindent	    	" Copy the structure of the existing lines indent when autoindenting a new line
set expandtab           " Use the appropriate number of spaces to insert a <Tab>
set ignorecase          " Ignore case in search patterns
set linebreak           " If on, Vim will wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
set number              " Print the line number in front of each line
set matchtime=4         " Tenths of a second to show the matching paren
set shiftwidth=4        " Number of spaces to use for each step of (auto)indent
set showmatch           " When a bracket is inserted, briefly jump to the matching one
set smartcase           " Override the 'ignorecase' option if the search pattern contains upper case characters
set smartindent         " Do smart autoindenting when starting a new line 
set smarttab            " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'
set softtabstop=4       " Number of spaces that a <Tab> counts for while performing editing operations
set tabstop=4           " Number of spaces that a <Tab> in the file counts for
set termguicolors       " Use GUI color settings
set undofile            " When on, Vim automatically saves undo history to an undo file when writing a buffer to a file
set wildmenu            " Command-line completion operates in an enhanced mode

" :let &showbreak = '+++ ' " String to put at the start of lines that have been wrapped

" neovim python2/3 provider config
let g:python_host_prog='/usr/local/bin/python2'
let g:python3_host_prog='/usr/local/bin/python3'

" vim-airline config
let g:airline_theme = 'tender'
let g:airline_powerline_fonts = 1

" Disable netrw since remote editing is unused 
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" Run goimports on save
let g:go_fmt_command = "goimports"

" syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"
let g:syntastic_auto_jump = 3
let g:syntastic_auto_loc_list = 1

let g:syntastic_puppet_puppetlint_args = "--no-autoloader_layout-check"

" deoplete stuff
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()

" Disable :autocmd, shell and write commands from .nvimrc in cwd
" This must be the last line
set secure
