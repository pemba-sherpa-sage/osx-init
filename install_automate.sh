#!/bin/bash

# Go to the Downloads folder
cd ~/Downloads

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Download iTerm2
brew cask install iterm2

# Download Microsoft Teams
brew cask install microsoft-teams

# Install Microsoft Visual Studio Code
brew cask install mscode-ide

# Install Postman
brew cask install postman

# Install Google Chrome
brew cask install google-chrome

#Install git
brew install git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Maven
mkdir ~/maven

# 3.6.2
curl -O https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
unzip apache-maven-3.6.3-bin.zip 
mv apache-maven-3.6.3 ~/maven/3.6.3
rm apache-maven-3.6.3-bin.zip


chmod -R 755 ~/maven

# Add maven configs to .zshrc
echo "alias mvn363='ln -sf ~/maven/3.6.3/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc

#Set Maven 3.6.3 to the default
echo "mvn363" >> ~/.zshrc

# Install rvm - Ruby
# brew install gpg
#
# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# \curl -sSL https://get.rvm.io | bash -s stable
# source $HOME/.rvm/scripts/rvm
# rvm install ruby-2.6.2

# Install Java 
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk12

# Set up Java aliases
echo "unset JAVA_HOME;alias jdk8='export JAVA_HOME=\`/usr/libexec/java_home -v \"1.8\"\`'" >> ~/.zshrc
echo "unset JAVA_HOME;alias jdk12='export JAVA_HOME=\`/usr/libexec/java_home -v \"12\"\`'" >> ~/.zshrc

#Set Java 8 to the default
echo "jdk8" >> ~/.zshrc
