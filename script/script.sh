FILE=/usr/bin/python
if test -f "$FILE"; then
    printf "\e[32m$FILE exist\e[0m\n"
else
    printf "\e[31m$FILE doesn't exist\e[0m\n"
    sudo ln -sf $PWD/python3.8 /usr/bin/python
    echo "Ran sudo ln -sf $PWD/python3.8 /usr/bin/python"
    echo "\e[32mCreated a file\e[0m\n"
fi
