#!/bin/bash

echo 'Showing hidden files'
defaults write com.apple.finder AppleShowAllFiles YES.
echo 'Showing hidden files done'

echo 'Increasing Trackpad scaling'
defaults write -g com.apple.trackpad.scaling -float 5.0
echo 'Increasing Trackpad scaling done'

echo 'Increasing mouse scaling'
defaults write -g com.apple.mouse.scaling 3
echo 'Increasing mouse scaling done'

echo '...'
ln -sf ~/dotfiles/welcome ~/welcome;
echo 'welcome link done'

echo '...'
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile;
echo '.bash_profile link done'

echo '...'
ln -sf ~/dotfiles/.vimrc ~/.vimrc
echo '.vimrc link done'

echo '...'
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig;
echo '.gitconfig link done'

echo '...'
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
echo '.gitignore link done'

echo '...'
ln -sf ~/dotfiles/.bashrc ~/.bashrc;
echo '.bashrc link done'

echo '...'
if [ ! -d ~/Projects ]; then
  echo 'Projects is missing'
  echo 'Creating Projects folder...'
  mkdir ~/Projects
else
  echo 'Projects exists'
fi

echo '...'
if ! command -v "brew" > /dev/null; then
  echo 'Homebrew is not installed'
  echo 'Installing...'
  echo '.'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo '.'
else
  echo 'Homebrew is installed'
fi

echo '...'
if ! command -v "wget" > /dev/null; then
  echo 'wget is not installed'
  echo 'Installing...'
  echo '.'
  brew install wget
  echo '.'
else
  echo 'wget is installed'
fi

echo '...'
if command -v "brew cask" >/dev/null 2>&1; then
  echo 'Homebrew cask is not installed'
  echo 'Installing...'
  echo '.'
  brew install caskroom/cask/brew-cask
  echo '.'
else
  echo 'Homebrew cask is installed'
fi

echo '...'
if [ ! -d /Applications/Sublime\ Text.app ]; then
    echo "Sublime text 3 is not installed"
else
  sudo rm -R ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings;
  ln -s ~/dotfiles/.preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
  echo 'Sublime Text 3 preferences link done'
  sudo ln -sf /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/bin/subl
  echo 'subl link done'
fi

echo '...'
LATESTPHP=$(ls -t /Applications/MAMP/bin/php/ | head -1)
if [ ! -f /Applications/MAMP/bin/php/$LATESTPHP/bin/php ]; then
  echo "MAMP Pro is not installed"
else
  sudo cp -f /Applications/MAMP/bin/php/$LATESTPHP/bin/php /usr/bin/php
  echo 'MAMP is installed'
  echo "$LATESTPHP link done"
fi

echo '...'
if ! command -v "git" > /dev/null; then
  echo 'Git is not installed'
else
  echo 'Git is installed'
fi

echo '...'
if ! command -v "phpunit" > /dev/null; then
  echo 'PhpUnit is not installed'
  wget https://phar.phpunit.de/phpunit.phar
  chmod +x phpunit.phar
  sudo mv phpunit.phar /usr/local/bin/phpunit
else
  echo "PhpUnit is installed"
fi
echo '...'

if ! command -v "php-cs-fixer" > /dev/null; then
  echo 'PHP CS Fixer is not installed'
  wget http://get.sensiolabs.org/php-cs-fixer.phar -O php-cs-fixer
  chmod a+x php-cs-fixer
  sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
else
  echo "PHP CS Fixer is installed"
fi

echo '...'
if ! command -v "phpdocumentor" > /dev/null; then
  echo "PHPDocumentor is not installed"
  wget http://phpdoc.org/phpDocumentor.phar
  chmod +x phpDocumentor.phar
  sudo mv phpDocumentor.phar /usr/local/bin/phpdocumentor
else
  echo "PHPDocumentor is installed"
fi

echo '...'
if ! command -v "composer" > /dev/null; then
  echo 'Composer is not installed'
  echo 'Installing...'
  echo '.'
  curl -sS https://getcomposer.org/installer | php
  sudo mv composer.phar /usr/bin/composer
  echo '.'
else
    echo 'Composer is installed'
fi

echo '...'
if ! command -v "bower" > /dev/null; then
  echo 'Bower not installed'
  echo 'Installing...'
  echo '.'
  sudo npm install -g bower
  echo '.'
else
    echo 'Bower is installed'
fi

echo '...'
if ! command -v "bower-installer" >/dev/null; then
  echo 'bower-installer is not installed'
  echo 'installing...'
  echo '.'
  sudo npm install -g bower-installer
  echo '.'
else
  echo 'bower-installer is installed'
fi

echo '...'
if ! command -v "gulp" >/dev/null; then
  echo 'gulp is not installed'
  echo 'installing...'
  echo '.'
  sudo npm install --global gulp
  echo '.'
else
  echo 'gulp is installed'
fi

echo '...'
if ! command -v "nodemon" >/dev/null; then
  echo 'nodemon is not installed'
  echo 'installing...'
  echo '.'
  sudo npm install -g nodemon
  echo '.'
else
  echo 'nodemon is installed'
fi

echo '...'
if ! command -v "sass" >/dev/null; then
  echo 'sass is not installed'
  echo 'installing...'
  echo '.'
  sudo gem install sass
  echo '.'
else
  echo 'sass is installed'
fi

echo '...'
if ! command -v "bundler" >/dev/null; then
  echo 'bundler is not installed'
  echo 'installing...'
  echo '.'
  sudo gem install bundler
  echo '.'
else
  echo 'bundler is installed'
fi

echo '...'
if ! command -v "middleman" >/dev/null; then
  echo 'middleman is not installed'
  echo 'installing...'
  echo '.'
  sudo gem install middleman
  echo '.'
else
  echo 'middleman is installed'
fi

echo '...'
if [ ! -f ~/.ssh/id_rsa.pub ]; then
  echo 'No SSH key found.'
  echo 'Generating...'
  echo "Please enter your email address:"
  read -e GITEMAIL
  ssh-keygen -t rsa -C $GITEMAIL
  echo '.'
else
  echo 'SSH key found'
fi

if ! command -v "tmux" > /dev/null; then
    echo "Tmux is not installed"
    echo "Installing Libevent"
    brew install libevent
    echo "Installing tmux"
    wget -P tmp/ https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
    tar -C tmp/ -xzf tmp/tmux-2.3.tar.gz
    cd ~/dotfiles/tmp/tmux-2.3
    ./configure
    make
    make install
    cd ~/dotfiles
    echo "Done installing tmux"
else
    echo "Tmux is installed"
fi

echo '...'
