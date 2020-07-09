#!/bin/bash

editor_of_choice=""

if [ -d "$HOME/.config/nvim" ]; then
    while [ ! "$editor_of_choice" = "y" ] || [ ! "$editor_of_choice" = "n" ]; do
        echo 'You appear to have neovim installed. Install for neovim? (y/n)'
        read -r editor_of_choice
        if [ "$editor_of_choice" = "y" ]; then
            if [ -d "$HOME/.config/nvim/ftdetect" ] && [ -d "$HOME/.config/nvim/syntax" ]; then
                cp vim/ftdetect/dnd.vim ~/.config/nvim/ftdetect/
                cp vim/syntax/dndnv.vim ~/.config/nvim/syntax/
            else
                cp -r vim/ftdetect ~/.config/nvim/
                cp -r vim/syntax ~/.config/nvim/
            fi
            echo -e '\033[1;32mInstalled for nvim. Check ~/.config/nvim/\033[0m'
            break
        elif [ "$editor_of_choice" = "n" ]; then
            echo 'Not installing for nvim.'
            break
        fi
    done
fi

editor_of_choice=""

if [ -d "$HOME/.vim" ]; then
    while [ ! "$editor_of_choice" = "y" ] || [ ! "$editor_of_choice" = "n" ]; do
        echo 'You appear to have vim installed. Install for vim? (y/n)'
        read -r editor_of_choice
        if [ "$editor_of_choice" = "y" ]; then
            if [ -d "$HOME/.vim/ftdetect" ] && [ -d "$HOME/.vim/syntax" ]; then
                cp vim/ftdetect/dnd.vim ~/.vim/ftdetect/
                cp vim/syntax/dndnv.vim ~/.vim/syntax/
            else
                mkdir ~/.vim
                cp -r vim/ftdetect ~/.vim
                cp -r vim/syntax ~/.vim
            fi
            echo -e '\033[1;32mInstalled for vim. Check ~/.vim/\033[0m'
            break
        elif [ "$editor_of_choice" = "n" ]; then
            echo 'Not installing for vim.'
            break
        fi
    done
fi

echo -e '\033[1mEnjoy my scripts! If you have any problems, open an issue @ https://github.com/willnilges/DNDNV

Happy Adventuring!\033[0m

(Kobold Gang)'

exit 0
