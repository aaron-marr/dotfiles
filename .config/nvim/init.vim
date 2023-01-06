call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'build': {'unix': 'yarn install --frozen-lockfile'},}
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'wuelnerdotexe/vim-enfocado'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
" Plug 'sonph/onehalf'

call plug#end()
 
set number
set termguicolors
set t_Co=256
set background=light

" let ayucolor="mirage"   " for dark version of theme
let g:enfocado_style = 'neon'
colorscheme enfocado

let g:lightline = { 'colorscheme': 'enfocado' }

" Enable Coc Typescript support
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" Add coc-prettier extension
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
 
" Add Coc Eslint extension
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Display hidden files in fzf
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" Toggle nerd tree
:nnoremap <C-b> :NERDTreeToggle<CR>

