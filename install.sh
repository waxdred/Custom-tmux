#!/bin/bash

install(){
    echo "copy .tmux"
    cp -R $PWD/tmux $HOME/.tmux
    echo "copy .tmux.conf"
    cp $PWD/tmux.conf $HOME/.tmux.conf
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    echo "Prefix + I, for install the plugins"
    echo "well done"
}


main(){
    install
}

main
