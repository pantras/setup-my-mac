#! /bin/bash

# inspired by https://github.com/mathiasbynens/dotfiles/blob/master/.macos

sudo -v # Ask for the administrator password upfront
# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if test ! $(command -v brew) 
then
  echo installing brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

list="ack jq rbenv"
for app in $list
do
  brew install $app
done
