############################################################################
#    .
#   /|\
#  / |/\
# | \|'.|
# \.'|/ /
#  \'|'/
#   `|´
#    |
# This file was written by Steve "Grasseh" Gagné and can be reused for free.
# It contains additionnal installation steps for OSX based systems.
############################################################################
if ! command -v "brew" > /dev/null; then
  echo 'Homebrew is not installed'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
