Установить все зависимости:
sudo apt install curl
sudo curl -sL https://deb.nodesource.com/setup_16.x | sudo bash - # Добавляем репозиторий с правильной версией nodejs
sudo apt install neovim python3 python3-pip exuberant-ctags git nodejs -y
sudo pip3 install jedi

Создать файл конфигурации для nvim:
cd && mkdir .config && cd ~/.config/ && mkdir nvim && cd nvim && nvim init.vim

Вставить текст из гитового init.vim в только что созданный, сохранить

:w
:so %

Установить vim-plug:
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

:PlugInstall

Установить lsp server python:
cd ~/.config/nvim/plugged/coc.nvim && sudo npm install -g yarn && sudo yarn install && sudo yarn build

:CocInstall coc-python
