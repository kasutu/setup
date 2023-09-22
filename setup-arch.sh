#!/bin/bash

# Update the package lists for upgrades and new package installations
sudo pacman -Syu

# Install curl, unzip, and base-devel
sudo pacman -S --noconfirm curl unzip base-devel

# Install Java 17 and Maven
sudo pacman -S --noconfirm jdk-openjdk17 maven

# Set JAVA_HOME environment variable
echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk" >> ~/.bashrc

# Install Node.js using pamac
pamac install --no-confirm nodejs

# Install Android SDK using pamac (AUR package)
pamac build --no-confirm android-sdk

# Set ANDROID_HOME environment variable and add platform-tools to PATH
echo "export ANDROID_HOME=/opt/android-sdk" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/tools:\$ANDROID_HOME/platform-tools" >> ~/.bashrc

source ~/.bashrc

# Accept Android SDK licenses
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-30"

# Install adb
pamac install --no-confirm android-tools

# Install scrcpy
sudo pacman -S --noconfirm scrcpy

# Install Docker using pamac (AUR package)
pamac install --no-confirm docker

# Install OpenSSH Server
sudo pacman -S --noconfirm openssh

#### Enable and start services ####

# docker
sudo systemctl enable docker
sudo systemctl start docker

# OpenSSH Server
sudo systemctl enable sshd
sudo systemctl start sshd
