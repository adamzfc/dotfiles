"map
let mapleader=','
imap jj <ESC>
noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
vmap ,, <ESC>
nmap ,, <ESC>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugin
"call vundel#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

"Plugin 'davidhalter/jedi-vim'

Plugin 'vim-airline/vim-airline'

Plugin 'ervandew/supertab'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

"Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"normal
"set completeopt=menu
"set number
"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>
set pastetoggle=<F10>
set tabstop=4
set expandtab
set shiftwidth=4
syntax on
syntax enable
filetype on
set history=1000
set nocompatible
set backspace=indent,eol,start
set softtabstop=4
"set autoindent
set smartindent
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,gbk,ucs-bom,utf-16
set fileencoding=utf-8
set termencoding=utf-8
set nobackup
set noundofile
filetype on
set formatoptions-=ro
"-r: 按回车不会添加注释 -o 按o不会添加注释 -c:重新格式化长注释行不会添加注释

"jedi-vim
"vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"suptab
"let g:SuperTabDefaultCompletionType = "context"

"ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"inoremap <c-x><c-k> <c-x><c-k>

"snippet
"unite
let g:unite_enable_auto_select=0
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite history/yank<CR>
nnoremap <silent><leader>lg :<C-u>Unite -no-quit -keep-focus grep<CR>
nnoremap <silent>sm  :<C-u>Unite menu<CR>
nnoremap <silent> se :<C-u>Unite vimgrep<CR>
nnoremap <silent><F7> :!ctags %<CR>
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.enc = {
      \     'description' : 'Open with a specific character code again.',
      \ }
let g:unite_source_menu_menus.enc.command_candidates = [
      \       ['utf8', 'Utf8'],
      \       ['iso2022jp', 'Iso2022jp'],
      \       ['cp932', 'Cp932'],
      \       ['euc', 'Euc'],
      \       ['utf16', 'Utf16'],
      \       ['utf16-be', 'Utf16be'],
      \       ['jis', 'Jis'],
      \       ['sjis', 'Sjis'],
      \       ['unicode', 'Unicode'],
      \     ]

let g:unite_source_menu_menus.fenc = {
      \     'description' : 'Change file fenc option.',
      \ }
let g:unite_source_menu_menus.fenc.command_candidates = [
      \       ['utf8', 'WUtf8'],
      \       ['iso2022jp', 'WIso2022jp'],
      \       ['cp932', 'WCp932'],
      \       ['euc', 'WEuc'],
      \       ['utf16', 'WUtf16'],
      \       ['utf16-be', 'WUtf16be'],
      \       ['jis', 'WJis'],
      \       ['sjis', 'WSjis'],
      \       ['unicode', 'WUnicode'],
      \     ]

let g:unite_source_menu_menus.ff = {
      \     'description' : 'Change file format option.',
      \ }
let g:unite_source_menu_menus.ff.command_candidates = {
      \       'unix'   : 'WUnix',
      \       'dos'    : 'WDos',
      \       'mac'    : 'WMac',
      \     }

let g:unite_source_menu_menus.unite = {
      \     'description' : 'Start unite sources',
      \ }
let g:unite_source_menu_menus.unite.command_candidates = {
      \       'history'    : 'Unite history/command',
      \       'quickfix'   : 'Unite qflist -no-quit',
      \       'resume'     : 'Unite -buffer-name=resume resume',
      \       'directory'  : 'Unite -buffer-name=files '.
      \             '-default-action=lcd directory_mru',
      \       'mapping'    : 'Unite mapping',
      \       'message'    : 'Unite output:message',
      \       'scriptnames': 'Unite output:scriptnames',
      \     }
let g:unite_source_menu_menus.test = {
            \     'description' : 'Test menu3',
            \ }
let g:unite_source_menu_menus.test.command_candidates = [
            \   ['vimgrep', 'Unite vimgrep '],
            \ ]
let g:unite_source_menu_menus.gcc = {
            \     'description' : 'gcc',
            \ }
let g:unite_source_menu_menus.gcc.command_candidates = [
            \   ['g++', '!g++ -std=c++11 %'],
            \   ['gcc -std=c99', '!gcc -std=c99 %'],
            \   ['exec a.exe', '!./a.exe'],
            \ ]
let g:unite_source_menu_menus.gundo = {
            \     'description' : 'Gundo',
            \ }
let g:unite_source_menu_menus.gundo.command_candidates = [
            \   ['GundoToggle', 'GundoToggle'],
            \ ]
let g:unite_source_menu_menus.ctags = {
            \     'description' : 'ctags',
            \ }
let g:unite_source_menu_menus.ctags.command_candidates = [
            \   ['ctags %', '!ctags %'],
            \ ]
let g:unite_source_menu_menus.ultisnips = {
            \     'description' : 'UltiSnips Command',
            \ }
let g:unite_source_menu_menus.ultisnips.command_candidates = [
            \   ['UltiSnipsEdit', 'UltiSnipsEdit'],
            \ ]
let g:unite_source_menu_menus.recommand = {
            \     'description' : 'RE Command',
            \ }
let g:unite_source_menu_menus.recommand.command_candidates = [
            \   ['del ^M', '%s/\r//g'],
            \   ['transform tab to space', '%retab! %'],
            \   ['del <space> before line', '%s/^\s\+//'],
            \   ['del <space> after line', '%s/\s\+$//'],
            \ ]
" Set "-no-quit" automatically in grep unite source.
call unite#custom#profile('source/grep', 'context', {
            \   'no_quit' : 1
            \ })

" Fuzzy matching for plugins not using matcher_default as filter
call unite#custom#source('outline,line,grep,session', 'matchers',
            \ ['matcher_fuzzy'])
" Ignore some things
" KEEP THESE IN SYNC WITH WILDIGNORE!
" Need to escape dots in the patterns!
call unite#custom#source('file_rec,file_rec/async,file_mru,file,grep',
            \ 'ignore_pattern', join([
            \ '\.swp', '\.swo', '\~$',
            \ '\.git/', '\.svn/', '\.hg/',
            \ '^tags$', '\.taghl$',
            \ '\.ropeproject/', '\.pbxproj$', '\.xcodeproj', '\.vcproj',
            \ 'node_modules/', 'log/', 'tmp/', 'obj/',
            \ '/vendor/gems/', '/vendor/cache/', '\.bundle/', '\.sass-cache/',
            \ '/tmp/cache/assets/.*/sprockets/', '/tmp/cache/assets/.*/sass/',
            \ 'thirdparty/', 'Debug/', 'Release/',
            \ 'web/static/components/', 'web/static/external/','web/static/images/',
            \ '\.pyc$', 'pb2\.py$', '\.class$', '\.jar$', '\.min\.js$',
            \ '\.jpg$', '\.jpeg$', '\.bmp$', '\.png$', '\.gif$',
            \ '\.o$', '\.out$', '\.obj$', '\.rbc$', '\.rbo$', '\.gem$',
            \ '\.zip$', '\.tar\.gz$', '\.tar\.bz2$', '\.rar$', '\.tar\.xz$'
            \ ], '\|'))
nnoremap [unite] <Nop>
" ;f Fuzzy Find Everything
" " files, Buffers, recursive async file search
nnoremap <silent> <leader>f :<C-u>Unite
            \ -buffer-name=files file_rec/async<CR>
" ;y Yank history
" Shows all your yanks, when you accidentally overwrite
" nnoremap <silent> <leader>y :<C-u>Unite -buffer-name=yanks history/yank<CR>
" ;o Quick outline, see an overview of this file
" nnoremap <silent> <leader>o :<C-u>Unite -buffer-name=outline -vertical outline<CR>
" ;m MRU All Vim buffers, not file buffer
" nnoremap <silent> <leader>m :<C-u>Unite -buffer-name=mru file_mru<CR>
" ;b view open buffers
nnoremap <silent> <leader>b :<C-u>Unite -buffer-name=buffer buffer<CR>
" ;c Quick commands, lists all available vim commands
" nnoremap <silent> <leader>c :<C-u>Unite -buffer-name=commands command<CR>
" Function that only triggers when unite opens
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    " exit with esc
    nmap <buffer> <ESC> <Plug>(unite_exit)
    imap <buffer> <ESC> <Plug>(unite_exit)

    " Ctrl jk mappings
    imap <buffer> <c-j> <Plug>(unite_insert_leave)
    imap <buffer> <c-k> <Plug>(unite_insert_leave)
    nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
    nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)
    " jj because you're lazy, and leave insert mode
    imap <buffer> jj <Plug>(unite_insert_leave)
    " qq `` becuase you're lazy, and quit unite
    imap <buffer> qq <Plug>(unite_exit)
    imap <buffer> `` <Plug>(unite_exit)

    " refresh unite
    nmap <buffer> <C-r> <Plug>(unite_redraw)
    imap <buffer> <C-r> <Plug>(unite_redraw)

    " split control
    inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
    nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
    inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
    nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction


let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_rec_max_cache_files=5000

" Like ctrlp.vim settings.
call unite#custom#profile('default', 'context', {
            \   'prompt': '» ',
            \   'start_insert': 1,
            \   'update_time': 200,
            \   'winheight': 10,
            \   'cursor_line_highlight': 'UniteSelectedLine',
            \   'direction': 'botright',
            \   'prompt_direction': 'top',
            \ })

