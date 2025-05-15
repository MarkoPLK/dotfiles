#!/bin/bash

languages=$(echo "golang python lua c c++ bash js" | tr ' ' '\n')
core_utils=$(echo "stow git tar zip grep sed tr awk" | tr ' ' '\n')

selected=`printf "$languages\n$core_utils" | fzf`

read -p "Query: " query

echo $languages | grep -qs $selected

if [ $? -eq 0 ]; then
    if [ "$query" -eq "learn" ]; then
        curl="cht.sh/$selected/:$query"
    else
        curl="cht.sh/$selected/`echo $query | tr ' ' '+'`"
    fi
else
    curl="cht.sh/$selected~$query"
fi

echo $curl
tmux neww bash -c "curl -s $curl | less"
