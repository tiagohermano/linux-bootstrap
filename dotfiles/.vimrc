syntax on
set number
set relativenumber
set noerrorbells
set tabstop=2 softtabstop=2
set expandtab
set nowrap
set shiftwidth=2
set smartindent
set incsearch
set nobackup
set foldmethod=manual

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:airline_solarized_bg='molokai'

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim' " CTRL + P SEARCH
Plug 'herringtondarkholme/yats.vim' " TYPESCRIPT SYNTAX
Plug 'scrooloose/nerdcommenter' " COMMENTER
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'Galooshi/vim-import-js'
Plug 'easymotion/vim-easymotion'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" THEMES
Plug 'morhetz/gruvbox'
Plug 'franbach/miramare'

" SYNTAX HIGHLIGHT
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'hail2u/vim-css3-syntax'

Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'branch': 'release/1.x',
    \ 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'less',
      \ 'scss',
      \ 'json',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'lua',
      \ 'php',
      \ 'python',
      \ 'ruby',
      \ 'html',
      \ 'swift' ] }

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'epilande/vim-react-snippets'
Plug 'sirver/ultisnips'

Plug 'thaerkh/vim-workspace'

" GIT PLUGINS
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

call plug#end()

" SET LEADER KEY
nnoremap <Space> <nop>
map <Space> <Leader>

" TABS & SPLITS NAVIGATION MAPS
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set splitbelow splitright 

" Make adjusting split sizes a bit more friendly
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" map Easymotion
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Substituir multiplas ocorrencias de uma seleção
nnoremap <F2> :%s/<C-r><C-w>//gc<left><left><left>

" Go to definition
nnoremap <leader>gd :YcmCompleter GoTo<CR>
"nmap <leader>gd <Plug>(coc-defition)
"nmap <leader>gr <Plug>(coc-references)

" Configuracoes visuais do airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

" Commenter
nmap <C-]> <plug>NERDCommenterToggle
vmap <C-]> <plug>NERDCommenterToggle

 " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

let g:ale_fixers = {'javascript': ['prettier_standard'], 'typescript': ['prettier_standard']}
let g:ale_linters = {'javascript': ['']}
let g:ale_completion_enabled = 1

" NERDTREE SETTINGS
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$', '^.git$']
let NERDTreeShowHidden=1

" COLORSCHEME SETTINGS
set termguicolors
colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

" CTRL-P SETTINGS
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\
\  },
\}

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

" CREATE NEW FILE BINDING
command -nargs=1 E execute('silent! !mkdir -p "$(dirname "<args>")"') <Bar> e <args>
