#!/bin/bash

if [ -d "~/.vim/ftdetect" ] && [ -d "~/.vim/syntax"]; then
    cp vim/ftdetect/dnd.vim ~/.vim/ftdetect
    cp vim/syntax/dndnv.vim ~/.vim/syntax/dndnv.vim
else
    mkdir ~/.vim
    cp -r vim/ftdetect ~/.vim
    cp -r vim/syntax ~/.vim
fi

echo 'Installation complete. Check your ~/.vim directory'
exit 0
