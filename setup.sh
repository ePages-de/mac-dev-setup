#!/bin/bash

# see http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/

set -e

export SETTINGS=./.personalised_settings.sh

source ./init_settings.sh $SETTINGS
source $SETTINGS

echo "Using personalised dev setting from $SETTINGS"

export PATH=/usr/local/bin:$PATH

if [[ ! -x /usr/bin/gcc ]]; then
  echo "Info | Install | xcode cli tools"
  xcode-select --install
fi

if [[ ! -x /usr/local/bin/brew ]]; then
  echo "Info | Install | homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ -z `brew list --versions python` ]]; then
  echo "Info | Install | python"
  brew install python
fi

if [[ ! -x /usr/local/bin/ansible ]]; then
  echo "Info | Install | ansible"
  brew install ansible
fi

echo "Running ansible-playbook script..."

ansible-playbook -K -i hosts -c local main.yml
