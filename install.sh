#!/bin/bash

DATESTRING=`date +%G%m%d%H%M%S`
BACKDIR="~/.vim$DATESTRING.bak"
VIMFILES="vimrc vimrc4c vimrc4py vimrc4sh"
VIMDIRS="vim"

install_file()
{
    local file=$1
    echo "install file: $file"
    if [ -f ~/.$file ]; then
        cp ~/.$file ~/.vim$DATESTRING.bak/$file
        rm -rf ~/.$file
    fi
    cp $file ~/.$file
}

install_dir()
{
    local dir=$1
    echo "install dir: $dir"
    if [ -d ~/.$dir ]; then
        cp -afv ~/.$dir ~/.vim$DATESTRING.bak/$dir > /dev/null 2>&1
        rm -rf ~/.$dir
    fi
    cp -av $dir ~/.$dir
}

### main ###
mkdir ~/.vim$DATESTRING.bak

if [ $? -ne 0 ]; then
    echo "mkdir for backdir faild"
    exit 1
fi

for file in $VIMFILES; do
    install_file $file
done

for dir in $VIMDIRS; do
    install_dir $dir
done

echo "done"
