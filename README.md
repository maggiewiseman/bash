# bash
My bash settings


New setup (installs homebrew first to facilitate rest of installation)
```
#make sure you are in the home directory
cd

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install some utilities that are useful
brew install hub bash-git-prompt gpg wget

#clone save bash profile from git so that it can be used on new computer
git clone git@github.com:tvaughan77/bash.git

#if you have a .bash_profile already set up, make a backup copy
cp ~/.bash_profile ~/.bash_profile.bak

#copy the cloned .bash_profile to the home directory to be used as the new .bash_profile
cp bash/.bash_profile ~/

#some of the commands in .bash_profile use .myshell  and .vimrc so make a symbolic links
ln -s bash/myshell ~/.myshell

ln -s bash/.vimrc ~/.vimrc

#pulling down this file remotely. This file lets you type "fuck" to help figure out git commands
wget -O - https://raw.githubusercontent.com/nvbn/thefuck/master/install.sh | sh - && $0
```
Optional Node support:
brew install node

Optional CoffeeScript support:
npm install -g coffee-script

Optional Python support tools:
```
pip install virtualenvwrapper
# then comment in the line in ./.bash_profile `source ~/.myshell/python.bash`
```

Optional Ruby/RVM support if you're in to that kind of thing:
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
# then comment in the line in ./.bash_profile `source ~/.myshell/ruby.bash`
```

Optional AWS support that's pretty handy:
```
git clone https://github.com/jorgebastida/awslogs.git && cd awslogs && pip install .
```

## Don't Forget
Installing on a new computer?  Don't forget to bring (*with sneakerware*):

* ~/.ssh
* ~/.aws

And then install:
* Dropbox
* SpiderOak
* LastPass
* Evernote
* Slack
* Spotify
* Netbeans

And, for OSX, to show all files in finder: `defaults write com.apple.finder AppleShowAllFiles YES`
