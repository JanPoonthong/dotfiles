#!/bin/sh

for item in ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore
do
    FILE=$item
    if test -f "$FILE"; then
        printf "\e[32m$FILE exist\e[0m\n"
    else
        echo "Hello"
        printf "\e[31m$FILE doesn't exist\e[0m\n"
        if [ "~/.zshrc" = "$FILE" ]; then
            ln -sf $PWD/zsh/zshrc $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
        fi
        if [ "~/.vimrc" = "$FILE" ]; then
            ln -sf $PWD/vim/vimrc $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
        fi
        if [ "~/.gitconfig" = "$FILE" ]; then
            ln -sf $PWD/git/gitconfig $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
        fi
        if [ "~/.gitignore" = "$FILE" ]; then
            ln -sf $PWD/git/gitignore $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
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
        if [ "~/.zsh" = "$FILE" ]; then
            ln -sf $PWD/zsh $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
        fi
        if [ "~/.vim" = "$FILE" ]; then
            ln -sf $PWD/vim $FILE
            printf "\e[32mCreated a file $FILE\e[0m\n"
        fi
    fi
done

FILE=/usr/bin/python
if test -f "$FILE"; then
    printf "\e[32m$FILE exist\e[0m\n"
else
    printf "\e[31m$FILE doesn't exist\e[0m\n"
    sudo ln -sf $PWD/python3.8 /usr/bin/python
    echo "Ran sudo ln -sf $PWD/python3.8 /usr/bin/python"
    printf "\e[32mCreated a file\e[0m\n"
fi
