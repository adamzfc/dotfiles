"-------- plugin {{{
"------------------------------------------------------
"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'vim-airline/vim-airline'

"Plugin 'Shougo/unite.vim'

"Plugin 'Shougo/vimproc.vim'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'SirVer/ultisnips'

"Plugin 'honza/vim-snippets'

"Plugin 'scrooloose/nerdcommenter'

"Plugin 'godlygeek/tabular'

"Plugin 'rust-lang/rust.vim'

"Plugin 'terryma/vim-multiple-cursors'

"Plugin 'hynek/vim-python-pep8-indent'

"Plugin 'Shougo/vimfiler.vim'

"Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"}}}
"-------- pathogen {{{
"------------------------------------------------------
execute pathogen#infect()
filetype plugin indent on

"}}}
"-------- normal set {{{
"------------------------------------------------------
"http://stackoverflow.com/questions/8583028/vim-e518-unknown-option
set nomodeline
set nu
"set cindent
set autoindent
"set smartindent
"set noexpandtab
syntax on
let python_highlight_all=1
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
" coderwall.com/p/j9wnfw/vim-tmux-system-clipboard
set clipboard=unnamed
"colorscheme solarized
"colorscheme desert
set background=dark
" solarized options  
let g:solarized_termtrans=1
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized
let g:solarized_termcolors=256
"no temp or backup files
set noswapfile
set nobackup
set nowritebackup

"}}}
"-------- key map {{{
"------------------------------------------------------
let mapleader=','
imap jj <ESC>
vmap ,, <ESC>
nmap ,, <ESC>
noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
" Fast reloading the .vimrc
map <silent> <leader>ss :source ~/.vimrc<CR>
" Fast editing the .vimrc
map <silent> <leader>ee :e ~/.vimrc<CR>

"}}}
"-------- folding {{{
"------------------------------------------------------
" enable folding; http://vim.wikia.com/wiki/Folding
set foldmethod=marker

" fold color
hi Folded cterm=bold ctermfg=DarkBlue ctermbg=none
hi FoldColumn cterm=bold ctermfg=DarkBlue ctermbg=none

"refocus folds; close any other fold except the one that you are on
nnoremap ,z zMzvzz

"python folding
au BufNewFile,BufRead *.py set foldmethod=indent 
au BufNewFile,BufRead *.py set foldlevel=99
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

"}}}
"-------- vim-airline {{{
"------------------------------------------------------
let g:airline#extensions#tabline#enabled=1
set laststatus=2
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

"}}}
"-------- ultisnips {{{
"------------------------------------------------------

"let g:UltiSnipsExpandTrigger="<c-a>"
"let g:UltiSnipsJumpForwordTrigger="<c-a>"

"http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"let g:UltiSnipsExpandTrigger="<c-j>"
"http://chauncey.io/ultisnips-youcompleteme-now-if-i-can-just-get-you-two-to-cooperate/
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"}}}
"-------- unite {{{
"------------------------------------------------------
"let g:unite_enable_auto_select=0
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#filters#sorter_default#use(['sorter_rank'])
"let g:unite_source_history_yank_enable = 1
"nnoremap <leader>y :<C-u>Unite history/yank<CR>
"nnoremap <silent><leader>lg :<C-u>Unite -no-quit -keep-focus grep<CR>
"nnoremap <silent>sm  :<C-u>Unite menu<CR>
"nnoremap <silent> se :<C-u>Unite vimgrep<CR>
"nnoremap <silent><F7> :!ctags %<CR>
"let g:unite_source_menu_menus = {}
"let g:unite_source_menu_menus.enc = {
"      \     'description' : 'Open with a specific character code again.',
"      \ }
"let g:unite_source_menu_menus.enc.command_candidates = [
"      \       ['utf8', 'Utf8'],
"      \       ['iso2022jp', 'Iso2022jp'],
"      \       ['cp932', 'Cp932'],
"      \       ['euc', 'Euc'],
"      \       ['utf16', 'Utf16'],
"      \       ['utf16-be', 'Utf16be'],
"      \       ['jis', 'Jis'],
"      \       ['sjis', 'Sjis'],
"      \       ['unicode', 'Unicode'],
"      \     ]
"
"let g:unite_source_menu_menus.fenc = {
"      \     'description' : 'Change file fenc option.',
"      \ }
"let g:unite_source_menu_menus.fenc.command_candidates = [
"      \       ['utf8', 'WUtf8'],
"      \       ['iso2022jp', 'WIso2022jp'],
"      \       ['cp932', 'WCp932'],
"      \       ['euc', 'WEuc'],
"      \       ['utf16', 'WUtf16'],
"      \       ['utf16-be', 'WUtf16be'],
"      \       ['jis', 'WJis'],
"      \       ['sjis', 'WSjis'],
"      \       ['unicode', 'WUnicode'],
"      \     ]
"
"let g:unite_source_menu_menus.ff = {
"      \     'description' : 'Change file format option.',
"      \ }
"let g:unite_source_menu_menus.ff.command_candidates = {
"      \       'unix'   : 'WUnix',
"      \       'dos'    : 'WDos',
"      \       'mac'    : 'WMac',
"      \     }
"
"let g:unite_source_menu_menus.unite = {
"      \     'description' : 'Start unite sources',
"      \ }
"let g:unite_source_menu_menus.unite.command_candidates = {
"      \       'history'    : 'Unite history/command',
"      \       'quickfix'   : 'Unite qflist -no-quit',
"      \       'resume'     : 'Unite -buffer-name=resume resume',
"      \       'directory'  : 'Unite -buffer-name=files '.
"      \             '-default-action=lcd directory_mru',
"      \       'mapping'    : 'Unite mapping',
"      \       'message'    : 'Unite output:message',
"      \       'scriptnames': 'Unite output:scriptnames',
"      \     }
"let g:unite_source_menu_menus.test = {
"            \     'description' : 'Test menu3',
"            \ }
"let g:unite_source_menu_menus.test.command_candidates = [
"            \   ['vimgrep', 'Unite vimgrep '],
"            \ ]
"let g:unite_source_menu_menus.gcc = {
"            \     'description' : 'gcc',
"            \ }
"let g:unite_source_menu_menus.gcc.command_candidates = [
"            \   ['g++', '!g++ -std=c++11 %'],
"            \   ['gcc -std=c99', '!gcc -std=c99 %'],
"            \   ['exec a.exe', '!./a.exe'],
"            \ ]
"let g:unite_source_menu_menus.gundo = {
"            \     'description' : 'Gundo',
"            \ }
"let g:unite_source_menu_menus.gundo.command_candidates = [
"            \   ['GundoToggle', 'GundoToggle'],
"            \ ]
"let g:unite_source_menu_menus.ctags = {
"            \     'description' : 'ctags',
"            \ }
"let g:unite_source_menu_menus.ctags.command_candidates = [
"            \   ['ctags %', '!ctags %'],
"            \ ]
"let g:unite_source_menu_menus.ultisnips = {
"            \     'description' : 'UltiSnips Command',
"            \ }
"let g:unite_source_menu_menus.ultisnips.command_candidates = [
"            \   ['UltiSnipsEdit', 'UltiSnipsEdit'],
"            \ ]
"let g:unite_source_menu_menus.recommand = {
"            \     'description' : 'RE Command',
"            \ }
"let g:unite_source_menu_menus.recommand.command_candidates = [
"            \   ['1del ^M', '%s/\r//g'],
"            \   ['2transform tab to space', '%retab! %'],
"            \   ['3del <space> before line', '%s/^\s\+//'],
"            \   ['4del <space> after line', '%s/\s\+$//'],
"            \ ]
"" Set "-no-quit" automatically in grep unite source.
"call unite#custom#profile('source/grep', 'context', {
"            \   'no_quit' : 1
"            \ })
"
"" Fuzzy matching for plugins not using matcher_default as filter
"call unite#custom#source('outline,line,grep,session', 'matchers',
"            \ ['matcher_fuzzy'])
"" Ignore some things
"" KEEP THESE IN SYNC WITH WILDIGNORE!
"" Need to escape dots in the patterns!
"call unite#custom#source('file_rec,file_rec/async,file_mru,file,grep',
"            \ 'ignore_pattern', join([
"            \ '\.swp', '\.swo', '\~$',
"            \ '\.git/', '\.svn/', '\.hg/',
"            \ '^tags$', '\.taghl$',
"            \ '\.ropeproject/', '\.pbxproj$', '\.xcodeproj', '\.vcproj',
"            \ 'node_modules/', 'log/', 'tmp/', 'obj/',
"            \ '/vendor/gems/', '/vendor/cache/', '\.bundle/', '\.sass-cache/',
"            \ '/tmp/cache/assets/.*/sprockets/', '/tmp/cache/assets/.*/sass/',
"            \ 'thirdparty/', 'Debug/', 'Release/',
"            \ 'web/static/components/', 'web/static/external/','web/static/images/',
"            \ '\.pyc$', 'pb2\.py$', '\.class$', '\.jar$', '\.min\.js$',
"            \ '\.jpg$', '\.jpeg$', '\.bmp$', '\.png$', '\.gif$',
"            \ '\.o$', '\.out$', '\.obj$', '\.rbc$', '\.rbo$', '\.gem$',
"            \ '\.zip$', '\.tar\.gz$', '\.tar\.bz2$', '\.rar$', '\.tar\.xz$'
"            \ ], '\|'))
"
"" https://www.reddit.com/r/vim/comments/2fnbrq/question_about_unite/
"call unite#custom#source('file_rec,file_rec/async,file_mru,file,grep',
"            \ 'ignore_globs', ['build/**', 'node_modules/**']) 
"
"nnoremap [unite] <Nop>
"" ;f Fuzzy Find Everything
"" " files, Buffers, recursive async file search
"nnoremap <silent> <leader>f :<C-u>Unite
"            \ -buffer-name=files file_rec/async<CR>
"" ;y Yank history
"" Shows all your yanks, when you accidentally overwrite
"" nnoremap <silent> <leader>y :<C-u>Unite -buffer-name=yanks history/yank<CR>
"" ;o Quick outline, see an overview of this file
"" nnoremap <silent> <leader>o :<C-u>Unite -buffer-name=outline -vertical outline<CR>
"" ;m MRU All Vim buffers, not file buffer
"" nnoremap <silent> <leader>m :<C-u>Unite -buffer-name=mru file_mru<CR>
"" ;b view open buffers
"nnoremap <silent> <leader>b :<C-u>Unite -buffer-name=buffer buffer<CR>
"" ;c Quick commands, lists all available vim commands
"" nnoremap <silent> <leader>c :<C-u>Unite -buffer-name=commands command<CR>
"" Function that only triggers when unite opens
"autocmd FileType unite call s:unite_settings()
"function! s:unite_settings()
"    " exit with esc
"    nmap <buffer> <ESC> <Plug>(unite_exit)
"    imap <buffer> <ESC> <Plug>(unite_exit)
"
"    " Ctrl jk mappings
"    imap <buffer> <c-j> <Plug>(unite_insert_leave)
"    imap <buffer> <c-k> <Plug>(unite_insert_leave)
"    nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
"    nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)
"    " jj because you're lazy, and leave insert mode
"    imap <buffer> jj <Plug>(unite_insert_leave)
"    " qq `` becuase you're lazy, and quit unite
"    imap <buffer> qq <Plug>(unite_exit)
"    imap <buffer> `` <Plug>(unite_exit)
"
"    " refresh unite
"    nmap <buffer> <C-r> <Plug>(unite_redraw)
"    imap <buffer> <C-r> <Plug>(unite_redraw)
"
"    " split control
"    inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
"    nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
"    inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
"    nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
"endfunction
"
"
"let g:unite_data_directory='~/.vim/.cache/unite'
"let g:unite_enable_start_insert=1
"let g:unite_source_rec_max_cache_files=5000
"
"" Like ctrlp.vim settings.
"call unite#custom#profile('default', 'context', {
"            \   'prompt': '» ',
"            \   'start_insert': 1,
"            \   'update_time': 200,
"            \   'winheight': 10,
"            \   'cursor_line_highlight': 'UniteSelectedLine',
"            \   'direction': 'botright',
"            \   'prompt_direction': 'top',
"            \ })
"
"}}}
"-------- ycm {{{
"------------------------------------------------------
"http://blog.csdn.net/leaf5022/article/details/21290509
" let g:ycm_error_symbol='>>'
" let g:ycm_warning_symbol='>*'

" "let g:ycm_global_ycm_extra_conf='~/.ycm_global_ycm_extra_conf'
" "let g:ycm_collect_identifiers_from_tags_files=1
" "let g:ycm_seed_identifiers_with_syntax=1
" set completeopt-=preview
" "let g:ycm_confirm_extra_conf=0
" "let g:ycm_cache_omnifunc=0
" let g:ycm_complete_in_comments=1
" let g:ycm_min_num_of_completion=1
" let g:ycm_use_ultisnips_completer=1

" "http://stackoverflow.com/questions/24720587/vim-with-youcompleteme-and-markdown
" let g:ycm_filetype_blacklist={}

" "for rust
" "let g:ycm_rust_src_path='/usr/local/rust/rustc-1.10.0/src'

" "for python
" "let g:ycm_python_binary_path='/usr/local/bin/python'

"}}}
"-------- nerdcommenter {{{
"------------------------------------------------------
let g:NERDSpaceDelims=1
"}}}
"-------- tabular {{{
"------------------------------------------------------
" nnoremap <leader>d :Tabularize /:<CR>
" nnoremap <leader>s :Tabularize /=><CR>
"}}}
"-------- rust {{{
"------------------------------------------------------
"let g:rustfmt_autosave=1
"}}}
"-------- vim-multiple-cursors {{{
"------------------------------------------------------
" let g:multi_cursor_use_default_mapping=0
" " Map start key separately from next key
" let g:multi_cursor_start_key='<C-i>'
" " Default mapping
" let g:multi_cursor_next_ket='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<ESC>'
"}}}
"-------- vimfiler {{{
"------------------------------------------------------
" nnoremap <leader>a :<C-u>VimFilerExplorer<CR>
"}}}
"-------- vim-markdwon {{{
"------------------------------------------------------
"https://github.com/plasticboy/vim-markdown
"disable folding
let g:vim_markdown_folding_disabled=1
"}}}
