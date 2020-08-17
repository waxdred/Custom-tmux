#!/bin/bash

install(){
    echo "copy .tmux"
    cp -R $PWD/tmux $HOME/.tmux
    echo "copy .tmux.conf"
    cp $PWD/tmux.conf $HOME/.tmux.conf
}


main(){
    install
}

main
