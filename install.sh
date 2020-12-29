#!/bin/bash


DIR=$(cd `dirname $0` && pwd)

VIM=$DIR/vim
VIM_VUNDLE_DIR=$HOME/.vim/bundle/Vundle.vim
VIM_VUNDLE_URL=https://github.com/VundleVim/Vundle.vim.git

LOG=$DIR/install.log
echo "" &> $LOG

function log {
	echo -e "[$(date +%T.%N)] $1" &>> $LOG
	echo -e "[$(date +%T.%N)] $1"
}

function execute {
	$1 &>> $LOG
	if ! [[ $? == 0 ]]; then
		log  "Ошибка выполнения команды: $1"
		exit 1
	fi
	echo -e "\n" &>> $LOG
}

log "Конфигурация Vim"
log "Копирование .vimrc файла в $HOME"
execute "cp $VIM/.vimrc $HOME/.vimrc"
log "Загрузка Vundle"
if [ ! -d "$VIM_VUNDLE_DIR" ]; then
	log "Клонирование репозитория Vundle"
	execute "git clone $VIM_VUNDLE_URL $VIM_VUNDLE_DIR"
else
	log "Обновление локального репозитория Vundle"
	execute "cd $VIM_VUNDLE_DIR"
	execute "git pull $VIM_VUNDLE_URL"
fi
log "Установка плагинов Vim"
execute "vim -n +PluginInstall +qall"
log "Плагины Vim установлены. Для установки vim-go воспользуйтесь командой :GoInstallBinaries"

log "Конфигурация завершена"
