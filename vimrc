" ==========================================
" 1. CORE & macOS INTERACTION SETTINGS
" ==========================================
set nocompatible               " Drop old Vi behavior, unlock Vim features
set encoding=utf-8             " Standardize file encoding
set autoread                   " Reload files changed outside Vim automatically
set backspace=indent,eol,start " Standard backspace behavior

" Sync Vim clipboard with macOS native clipboard
" (Allows cmd+c and cmd+v to work seamlessly with yy and p
set clipboard=unnamed

" ==========================================
" 2. USER INTERACTION & LOOKS
" ==========================================
syntax on                      " Enable syntax highlighting
set number                     " Show line numbers
set rnu                        " Relative line numbers (Great for jumps like 5j or 12k)
set cursorline                 " Highlight the line the cursor is currently on
set laststatus=2               " Always keep status bar visible
set showcmd                    " Show partial commands in bottom bar
set wildmenu                   " Better command-line autocomplete menu
set mouse=a                    " Enable mouse scrolling/clicking in Terminal

" ==========================================
" 3. SEARCH MECHANICS
" ==========================================
set hlsearch                   " Highlight search match
set incsearch                  " Jump to matches progressively as you type
set ignorecase                 " Case-insensitive search by default
set smartcase                  " Switch to case-sensitive if you use a capital letter

" Press <space> to clear search highlights after finding your word
let mapleader = " "
nnoremap <leader><space> :noh<CR>

" ==========================================
" 4. DEFAULT INDENTATION & CODE FORMATTING
" ==========================================
set autoindent                 " Copy indent from current line on newline
set smartindent                " Insert indents automatically where appropriate
set expandtab                  " Convert tabs to spaces
set tabstop=4                  " 1 tab = 4 spaces wide
set shiftwidth=4               " Indentation commands (like >>) use 4 spaces

" ==========================================
" 5. MULTI-LANGUAGE ENVIRONMENT PLUGINS
" ==========================================
" Detect file types and apply distinct rules/plugins automatically
filetype plugin indent on

" Language Specific Indentation (Overriding the 4-space default)
augroup LangSpecificIndent
    autocmd!
    " Web UI & Configs: JavaScript, TypeScript, HTML, CSS, JSON, YAML (2-space standard)
    autocmd FileType javascript,typescript,html,css,json,yaml setlocal ts=2 sw=2

    " Ruby / Elixir (2-space standard)
    autocmd FileType ruby,eruby,elixir setlocal ts=2 sw=2

    " Python, Java, Shell Scripts, Go, C/C++ (Keep 4-space default)
   autocmd FileType python,java,sh,go,c,cpp setlocal ts=4 sw=4
augroup END 
