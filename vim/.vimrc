" Vundle commands: 
"	:h vundle
"	:PluginList
"	:PluginInstall
"	:PluginSearch name
"	:PluginClean

set nocompatible              "режим несовместимости с Vi
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " = = = = = = = = = = = = =

"сниппеты
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'

"смена курсора в зависимости от мода
Plugin 'jszakmeister/vim-togglecursor'

"создание комментариев
Plugin 'vim-scripts/tComment'
"помощь                 :help tcomment
"управление             gc{motion} ИЛИ gcc

Plugin 'preservim/nerdtree', { 'on':'NERDTreeToggle'}
"m              для действий в директории (переименование, удаление и тд)
"o              открыть/закрыть каталог в дереве, открыть файл и перейти в окно с файлом
"go             рткрыть файл, но курсор остается на NERD Tree
"i              открыть файл в отдельном окне, разделение идет по горизонтали
"gi             тоже самое что и i, но курсор остается на NERD Tree
"С              сделать корнем текущую директорию
"u              сделать корнем директорию выше текущей

"вертикальная полоса на табах
Plugin 'Yggdroot/indentLine'

"автозакрытие ковычек и тд
Plugin 'jiangmiao/auto-pairs'

"новая полоса статуса
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"цветовые схемы
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set number relativenumber                       "гибритная нумерация строк
set scrolloff=5                                 "проскроливать при этом значении
set incsearch                                   "поиск в процессе набра
set hlsearch                                    "подсвечивать результаты поиска
set textwidth=0                                 "насильное разделение строки
set wrap                                        "перенос длинных строк
set linebreak                                   "перенос целых слов
set mousehide                                   "скрывать мышку при вводе
set mps+=<:>                                    "показывать парну скобу < и >
set showmatch                                   "показ первую парную после ввода вт-й
set confirm                                     "использ диал вместо сообщ об ошибках
set laststatus=2                                "всегда показывать строку состояния
set history=64                                  "увеличить истори команд
syntax on                                       "включение подсветки синтаксиса
"set cursorcolumn				"подсвечивать текущую колонку
set cursorline                                  "подсвечивать текущую строку
language en_US.utf8                             "установка языка
set encoding=utf-8				"установка кодировки
set termencoding=utf8                           "кодировка по умолчанию
set list                                        "подсвечивание скрытых символов
set listchars=tab:\ \ ,trail:␣                  "скрытые символы
set tabstop=4                                   "установка ширины таба
set autoindent                                  "сохранение отступов
set smarttab                                    "добавление отступов вначале
set smartindent                                 "умные отступы
set shiftwidth=4                                "ширина отступи на нажатии >> и <<
set background=dark				"оттенок фона
set termguicolors                               "высококонстрастные цвета
silent! colorscheme gruvbox						"цветовая схема
set laststatus=2				"отображать всегда полосу состояния
set langmap=ЁФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;~ABCDEFGHIJKLMNOPQRSTUVWXYZ\:,
            \ёфисвуапршолдьтщзйкыегмцчняж;`abcdefghijklmnopqrstuvwxyz\;
"не сохранять swap файлы
set nobackup
set nowritebackup
set noswapfile

"настройки gvim
if has('gui')
	set guifont="Monospace Regular":h10	"шрифт
	set go-=T				"отключить инструменты
	set go-=m				"отключить меню
	set go-=r				"отключить полосу прокрутки
	set go-=d				"темная тема у рамки
	win 130 32				"задать высотку и ширину
endif



"-----------------------------------------> Airline <--
"полоса сверху и её формат
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = "unique_tail_improved"
let g:airline_theme='gruvbox'           "тема
let g:airline_powerline_fonts=0		"специальные символы
"интеграция со сторонними плагинами
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1


"-----------------------------------------> indentLine <--
"какие значки отображаются (в зависимости от вложенности)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"показываем скрытые символы, которые включается в плагинe
let g:indentLine_setConceal = 0


"-----------------------------------------> UltiShips <--
let g:UltiSnipsExpandTrigger="<tab>"		"активировать


"-----------------------------------------> Emmet <--
let g:user_emmet_mode='a' 		   		"включить все функции во всех режимах
"запуск только в html, css файлах
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall	
let g:user_emmet_leader_key='<C-Z>'		"смена клавиши


"-----------------------------------------> Mapping <--
map <C-n> :NERDTreeToggle<CR>				"открыть дерево файлов
nnoremap <A-v> "+gP							"вставить текст из общего буфера 


"Запуск python файлов
au filetype python nnoremap <F5> :!clear; python3 %;<Enter>

