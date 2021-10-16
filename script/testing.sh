#!/bin/sh

for item in ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore
do
    FILE=$item
    if test -f "$FILE"; then
        printf "\e[32m$FILE exist\e[0m\n"
    else
        printf "\e[31m$FILE doesn't exist\e[0m\n"
    fi
done

for item in ~/.zsh ~/.vim
do
    FILE=$item
    if test -d "$FILE"; then
        printf "\e[32m$FILE exist\e[0m\n"
    else
        printf "\e[31m$FILE doesn't exist\e[0m\n"
    fi
done
