set number relativenumber
set nocompatible
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on
"set ruler
set showcmd
set backspace=indent,eol,start
set laststatus=2
filetype plugin on

func! WordProcessor()
        map j gj
        map k gk
        setlocal formatoptions=1
        setlocal noexpandtab
        setlocal wrap
        setlocal linebreak
        setlocal spell spelllang=en_ca
        set thesaurus+=/home/peterxiong/.vim/thesaurus/mthesaur.txt
        set complete+=s
endfu
com! WP call WordProcessor()


func! FrenchWordProcessor()
        "map j gj
        "map k gk
        setlocal formatoptions=1
        setlocal noexpandtab
        setlocal wrap
        setlocal linebreak
        setlocal spell spelllang=fr_ca
        "set thesaurus+=/home/peterxiong/.vim/thesaurus/mthesaur.txt
        "set complete+=s
endfu
com! FR call FrenchWordProcessor()

let g:languagetool_jar='~/Downloads/languagetool/languagetool-standalone/target/LanguageTool-5.3-SNAPSHOT/LanguageTool-5.3-SNAPSHOT/languagetool-commandline.jar'

"let g:lightline = {
      "\ 'component_function': {
      "\   'readonly': 'LightlineReadonly',
      "\ },
      "\ }

"function! LightlineReadonly()
  "return &readonly && &filetype !=# 'help' ? 'RO' : ''
"endfunction
"
"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ }

