syntax on
set number
set relativenumber
set noerrorbells
set tabstop=2 softtabstop=2
set expandtab
set nowrap
set shiftwidth=2
set smartindent
set autoindent
set copyindent
set incsearch
set noswapfile
set nobackup
set foldmethod=manual

" Perfomance Improvement Settings 
set nocursorcolumn
set nocursorline
syntax sync minlines=256
set complete-=i
set lazyredraw
set ttyfast

filetype plugin indent on
filetype plugin indent on

" COPY SELECTION TO SYSTEM CLIPBOARD
set clipboard^=unnamed
noremap <Leader>Y "*y
noremap <Leader>P "*p

if exists('+termguicolors')
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

Plug 'ctrlpvim/ctrlp.vim' " CTRL + P SEARCH
Plug 'scrooloose/nerdcommenter' " COMMENTER
Plug 'jiangmiao/auto-pairs'
Plug 'Galooshi/vim-import-js'
"Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " :Ag (global search) package 'silver searcher' needed
Plug 'junegunn/fzf.vim'

" THEMES
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sonph/onehalf' , {'rtp': 'vim/'}
Plug 'dracula/vim', { 'as': 'dracula' }

" SYNTAX HIGHLIGHT
"Plug 'leafgarland/typescript-vim'
"Plug 'pangloss/vim-javascript'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'hail2u/vim-css3-syntax'
"Plug 'alvan/vim-closetag'
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
Plug 'christoomey/vim-conflicted'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
"Plug 'valloric/youcompleteme'
"Plug 'zxqfl/tabnine-vim'
Plug 'eslint/eslint'

Plug 'epilande/vim-react-snippets'
Plug 'sirver/ultisnips'

"Plug 'thaerkh/vim-workspace'

" GIT PLUGINS
Plug 'xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
nmap <Leader>pp <Plug>(GitGutterPreviewHunk)

" Unhighlight Text
nnoremap <silent> <Leader>h :nohl<CR><C-l>

" map Easymotion
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Substituir multiplas ocorrencias de uma seleção
nnoremap <F2> :%s/<C-r><C-w>//gc<left><left><left>

" Pesquisa Global no projeto
map <C-S-g> :Ag

" Go to definition
nnoremap <leader>gd :YcmCompleter GoTo<CR>

" Navigate to next Lint/Ale Error
nmap <silent> <leader>ll :ALENext<cr>
nmap <silent> <leader>hh :ALEPrevious<cr>

" Emmet: replaces double quotes with single quotes
let g:user_emmet_settings = {
    \  'html' : {
    \    'quote_char': "'",
    \  },
    \}

" Configuracoes visuais do airline
let g:airline_solarized_bg='dark'
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_extensions = []

" Commenter
nmap <C-]> <plug>NERDCommenterToggle
vmap <C-]> <plug>NERDCommenterToggle

 " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

let g:ale_fixers = {'javascript': ['prettier_standard'], 'typescript': ['prettier_standard']}
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tsserver', 'tslint']}
let g:ale_completion_enabled = 1

" PRETTIER CONFIG
" print semicolons
"let g:prettier#config#semi = 'false'

" single quotes over double quotes
"let g:prettier#config#single_quote = 'true'

" print spaces between brackets
"let g:prettier#config#bracket_spacing = 'true'

" NERDTREE SETTINGS
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$', '^.git$']
let NERDTreeShowHidden=1

" COLORSCHEME SETTINGS
set termguicolors
"colorscheme gruvbox-material
colorscheme gruvbox-material
set background=dark
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" CLOSETAG FILES
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" JSX COMMENTER SETTINGS
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType typescript.tsx setlocal commentstring={/*\ %s\ */}

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
