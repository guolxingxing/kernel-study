" ---------- Basic Settings ----------
set nocompatible
set number              " Show line numbers
syntax on               " Enable syntax highlighting
filetype plugin on
filetype indent on

set tabstop=8           " Display tabs as 8 spaces (kernel style)
set shiftwidth=8        " Indent by 8 spaces
set noexpandtab         " Use actual tabs, not spaces
set autoindent
set smartindent

" ---------- Ctags Settings ----------
set tags=./tags,tags;/  " Search for tags file up the tree

" ---------- Cscope Integration ----------
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e- " Enable :cnext/:cprev
    cs add cscope.out
endif

" ---------- Function Highlight ----------
highlight FunctionName cterm=bold ctermfg=Blue
syntax match FunctionName "\<\w\+\>("

" ---------- Keybindings ----------
" Jump to tag (symbol) under cursor
nnoremap <C-\> :vsp<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-]> :tag <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-t> :pop<CR>

" ---------- cscope find mappings ----------
nnoremap <leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>

" ---------- Better Searching ----------
set ignorecase
set smartcase
set incsearch
set hlsearch

" ---------- Status Line ----------
set ruler
set laststatus=2

" Toggle Taglist window with F8
nmap <F8> :TlistToggle<CR>

" Optional: open taglist automatically
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 0  " Set to 1 if you want it on the right
let Tlist_Exit_OnlyWindow = 1   " Close Vim when taglist is only window left

" Enable syntax highlighting
syntax on

" Highlight function calls like foo()
syntax match FunctionCall "\<[a-zA-Z_][a-zA-Z0-9_]*\>\s*("

" Colors
highlight FunctionCall ctermfg=Yellow cterm=bold
highlight Function ctermfg=Blue cterm=bold

