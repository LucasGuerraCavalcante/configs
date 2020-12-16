syntax on
set nocompatible              " be iMproved, required
filetype plugin indent on                 " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'luochen1990/rainbow'

" Autocomplete:
Plugin 'Valloric/YouCompleteMe'

" Find file by name:
set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'

" Rainbow
let g:rainbow_active = 1

" ActivateAddons vim-snippets snipmate

" Vim configuration:
" Indentation
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Line numbers:
set number

" No wrap:
set nowrap

" Plugins configuration:
" Snippets:
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Lint:
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" Code formatter:
let b:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1

" File explorer:
" NERDTress Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" ctrlsf (find file by text)
" O - always leave CtrlSF window opening.
" <C-O> - open file in a horizontal split window.
" <C-J> - Move cursor to next match.
" <C-K> - Move cursor to previous match.
nmap     <C-F> <Plug>CtrlSFPrompt
vmap     <C-F> <Plug>CtrlSFVwordPath

call vundle#end()

" vim.fzf (find file by filename)
map <C-b> :Files<CR>
