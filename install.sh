#!/bin/bash

install(){
    echo "Install syntax_hight"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    echo "install Tmux"
    brew install tmux
    echo "copy .tmux"
    cp -R $PWD/tmux $HOME/.tmux
    echo "copy .tmux.conf"
    cp $PWD/tmux.conf $HOME/.tmux.conf
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "get old version tmux"
    wget https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz
    tar xopf tmux-3.1c.tar.gz
    echo "remove new version"
    rm -rf $HOME/.brew/Cellar/tmux/3.2a
    echo "add old version"
    mv tmux-3.1c $HOME/.brew/Cellar/tmux/3.1c
    echo "Currente Version"
    tmux -V
    tmux source ~/.tmux.conf
    echo "Prefix + I, for install the plugins"
    echo "well done"
}


main(){
    install
}

main
