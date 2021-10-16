#!/bin/sh

for item in ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore
do
    FILE=$item
    if test -f "$FILE"; then
        printf "\e[32m$FILE exist\e[0m\n"
    else
        printf "\e[31m$FILE doesn't exist\e[0m\n"
        if [ "$HOME/.zshrc" = "$FILE" ]; then
            ln -sf $PWD/zsh/zshrc $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
        if [ "$HOME/.vimrc" = "$FILE" ]; then
            ln -sf $PWD/vim/vimrc $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
        if [ "$HOME/.gitconfig" = "$FILE" ]; then
            ln -sf $PWD/git/gitconfig $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
        if [ "$HOME/.gitignore" = "$FILE" ]; then
            ln -sf $PWD/git/gitignore $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
    fi
done

for item in ~/.zsh ~/.vim
do
    FILE=$item
    if test -d "$FILE"; then
        printf "\e[32m$FILE exist\e[0m\n"
    else
        printf "\e[31m$FILE doesn't exist\e[0m\n"
        if [ "$HOME/.zsh" = "$FILE" ]; then
            ln -sf $PWD/zsh $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
        if [ "$HOME/.vim" = "$FILE" ]; then
            ln -sf $PWD/vim $FILE
            echo "\e[35mCreated a file $FILE\e[0m"
        fi
    fi
done

FILE=/usr/bin/python
if test -f "$FILE"; then
    printf "\e[32m$FILE exist\e[0m\n"
else
    printf "\e[31m$FILE doesn't exist\e[0m\n"
    sudo ln -sf $PWD/python3.8 /usr/bin/python
    echo "\e[35mRan sudo ln -sf $PWD/python3.8 /usr/bin/python $FILE\e[0m"
fi
