"Mostra números das linhas
set number

"1 tab = 2 espaços
set shiftwidth=2
set tabstop=2

"Espaços ao inves de tabs
set expandtab
set autoindent
filetype plugin indent on

"Mostra linha e coluna atuais
set ruler

"Deixa a barra de comandos com 2 linhas
set cmdheight=2

"Deixa busca sem case
set ignorecase

"Highlight nos resultados da busca
set hlsearch

"Busca incremental
set incsearch

"Highlight de matching parenthesis
set showmatch

"Cor de fundo
colorscheme desert
set background=dark

"Faz régua na coluna 81
set colorcolumn=81
highlight ColorColumn ctermbg=DarkGray

"Tira todos os backups
set nobackup
set nowb
set noswapfile


"Deixa a linha de status mais bonita
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" Returns true if paste mode is enabled
function! HasPaste()
if &paste
return 'PASTE MODE  '
en
return ''
endfunction
