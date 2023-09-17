#!/bin/bash

# Update the package lists for upgrades and new package installations
sudo apt-get update

# Install curl, unzip, and software-properties-common which might be necessary for some installations
sudo apt-get install -y curl unzip software-properties-common

# Install VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code # or code-insiders

# Install Java and Maven for Java development
sudo apt-get install -y default-jdk maven

# Set JAVA_HOME environment variable
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc

# Install Node.js
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs -y

# Install Android SDK
cd ~/
wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
unzip commandlinetools-linux-7583922_latest.zip && rm commandlinetools-linux-7583922_latest.zip

# Set ANDROID_HOME environment variable and add platform-tools to PATH
echo "export ANDROID_HOME=$HOME/cmdline-tools" >> ~/.bashrc
echo "export PATH=$PATH:$ANDROID_HOME/bin" >> ~/.bashrc

source ~/.bashrc

yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;latest"

# Install scrcpy
sudo apt-get install -y scrcpy

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install OpenSSH Server
sudo apt-get install -y openssh-server

# Install NVIDIA GPU drivers (this will add a third-party repository)
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo ubuntu-drivers autoinstall

# WiFi drivers installation is specific to each system and cannot be scripted generically. 
# Please refer to the ASUS support website or Ubuntu community for specific instructions.
