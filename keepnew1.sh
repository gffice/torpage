#!/bin/sh

UPSTREAM="https://github.com/fuserh/torproject.git"
BOT_USER="github-actions[bot]"
BOT_EMAIL="41898282+github-actions[bot]@users.noreply.github.com"
CONFIG_PATH="config"


sync() {
    action="$1"
    message="$2"

    # call windows git from wsl
    git=git
    command -v git.exe && git=git.exe

    $git config user.name "$BOT_USER"
    $git config user.email "$BOT_EMAIL"
    $git clone https://github.com/fuserh/torproject
    $git remote add origin https://github.com/gffice/torpage.git
    $git branch -M master
    $git push -u origin master
}

case $1 in
register)
    register
    ;;
invoke)
    invoke
    ;;
pull | push)
    sync "$@"
    ;;
*)
    exit 0
    ;;
esac
