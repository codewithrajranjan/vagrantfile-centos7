"###############################################################################
" Genreal settings
"###############################################################################
set backspace=2
syntax on
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set hlsearch 
set nu " Setting numberline in vim
set ic " Ignoring case while searching
filetype plugin indent on
filetype plugin on
set nofixendofline "With this no automatic new line is created. Added this because it was creating problem for git
syntax on
set nofoldenable    "disable folding


"###############################################################################
" Colorscheme settings
"###############################################################################
"set background=dark
set background=light
set t_Co=256
colorscheme iceberg



"###############################################################################
" Plugin used by vim
"###############################################################################
call plug#begin() 
        "#####################################
        " NERD Tree Related Plugin
        "#####################################
	Plug 'scrooloose/nerdtree'
        Plug 'ervandew/supertab'
	Plug 'flazz/vim-colorschemes'
        Plug 'Valloric/YouCompleteMe'
        Plug 'kien/ctrlp.vim'
        Plug 'dracula/vim',{ 'as': 'dracula' }
        Plug 'heavenshell/vim-jsdoc'
        Plug 'airblade/vim-gitgutter'
        "Plug 'SirVer/ultisnips'
        "Plug 'honza/vim-snippets'
        Plug 'tpope/vim-fugitive'
        Plug 'scrooloose/syntastic'
        "#########################################
        " Activate this if you are using typescript
        "#########################################
        "Plug 'leafgarland/typescript-vim' "syntax highliting for typescript
        "Plug 'quramy/tsuquyomi' "typescript support in vim

        "#########################################
        " Java
        "#########################################
        Plug 'jaxbot/semantic-highlight.vim'
        Plug 'chiedo/vim-live-reload'

        "#########################################
        " Python 
        "#########################################

        "#########################################
        "# Robot Framework
        "#########################################
        Plug 'mfukar/robotframework-vim'
        Plug 'xolox/vim-notes'
        Plug 'xolox/vim-misc'
	


	
call plug#end() 



"###############################################################################
" This is used if we use vim diff then white spaces are not accounted for
"###############################################################################
if &diff
        " diff mode
        set diffopt+=iwhite
endif


"###############################################################################
" Allow vim for spell checking
"###############################################################################
"set spell
"set complete+=kspell
"hi clear SpellBad
"hi SpellBad ctermfg=009 ctermbg=Yellow


"###############################################################################
" Nerd Tree Plugin Settings
"###############################################################################
:map <C-n> :NERDTree<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeIgnore = ['__pycache__']
let NERDTreeShowHidden=1


"###############################################################################
" YouCompleteMe Settings
"###############################################################################
let g:ycm_python_binary_path = 'python3'
:nnoremap fd  :YcmCompleter GoToDefinition<CR>
:nnoremap bb <C-o>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

" for java
let g:syntastic_java_checkers = []
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_rst_checkers=['']
let g:EclimFileTypeValidate = 0
let g:ycm_goto_buffer_command = 'new-tab' "This is for opening the go to definintions in new tab

" for python
let g:ycm_semantic_triggers = {'python': ['re!from\s+\S+\s+import\s']}

"python with virtualenv support
"


"###############################################################################
" CtrlP Settings
"###############################################################################
:nnoremap ff :CtrlP<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|bower_components\|node_modules\|log\|tmp$'
    \ }
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }


"###############################################################################
" JSDOC Settings
"###############################################################################
:nnoremap doc :JsDoc<CR>
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return = 1
let g:jsdoc_return_type = 1
let g:jsdoc_return_description = 1
let g:jsdoc_enable_es6 = 1

"###############################################################################
" VIM git gutter settings
"###############################################################################
set updatetime=1700


"###############################################################################
" Syntastic settings
"###############################################################################
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"###############################################################################
" Typescript setting  quramy/tsuquyomi 
"###############################################################################
let g:tsuquyomi_disable_quickfix = 1 "disable default quickfix for this pluging
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.


"###############################################################################
"# Robot Framework settings
"###############################################################################
"g:robot_syntax_for_txt

"let g:semanticTermColors = [1,2,3,4,5,6,7,8,9,10,11,12]
"let s:semanticGUIColors = ['#f3a683','#ea8685']
"autocmd BufEnter *.java :SemanticHighlight
"autocmd BufEnter *.js :SemanticHighlight
"
"
autocmd FileType java nnoremap <buffer> <C-c> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>
autocmd FileType python nnoremap <buffer> <C-c> :exec '!python3.4' shellescape(@%, 1)<cr>
let s:hidden_all = 0

function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>
