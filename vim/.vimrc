" vim-plug
call plug#begin('~/.vim/plugged')
" Plug 'sirver/ultisnips'
"     let g:UltiSnipsExpandTrigger = '<nop>'
"     let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" Plug 'lervag/vimtex'
" 	let g:tex_flavor='latex'
" 	let g:vimtex_quickfix_mode=0
" 	set conceallevel=1
" 	let g:tex_conceal='abdmg'
" 	let g:vimtex_view_method = 'zathura'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	" let g:livepreview_engine = 'latexmk'
	" let g:livepreview_previewer = 'zathura'
Plug 'itchyny/lightline.vim'
	let g:lightline = {'colorscheme': 'seoul256'}
Plug 'phanviet/vim-monokai-pro'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_snippet_next = '<tab>'
Plug 'plasticboy/vim-markdown'
	let g:vim_markdown_folding_style_pythonic = 1
	let g:vim_markdown_fenced_languages = ['python=py']
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
call plug#end()

" own settings
set encoding=utf8
set noerrorbells
set mouse=a
set ruler
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showcmd
set noswapfile
set incsearch
set background=dark
set termguicolors
colorscheme monokai_pro
hi Normal guibg=#363537 ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
" hi CursorLine guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLineNR cterm=bold
set cursorline
" insert mode cursor shape |
let &t_SI = "\e[5 q"
" normal mode cursor shape block
let &t_EI = "\e[0 q"
set laststatus=2
map <C-_> <Plug>NERDCommenterToggle
filetype plugin on
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=124 guifg=#af0000 gui=underline

" spell check
setlocal spell
set spelllang=en_us,fr
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" space for easymotion
map <Space> <Leader><Leader>

" rebind esc to jk
imap jk <Esc>

" visual mode surround
" map vs vS

" turn hybrid line numbers on
:set number relativenumber

" coc.nvim
set hidden
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=number
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"
inoremap <silent><expr> <NUL> coc#refresh()
