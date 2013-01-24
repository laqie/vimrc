###Vim config

    git clone git://github.com/laqie/vimrc.git ~/.vim
    cd ~/.vim
    git submodule init
    git submodule update
    ln -s ~/.vim/vimrc ~/.vimrc
    vim +BundleInstall +qall


### Command-T

    cd ~/.vim/bundle/Command-T/ruby/command-t/
    ruby extconf.rb
    make
