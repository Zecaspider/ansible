#!/bin/bash

# Remove all previous and old docker installation
sudo apt-get remove docker docker-engine docker.io containerd runc

# Setup the repository
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg

# Add docker oficial api key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Setup the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package
sudo apt-get update


# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Add current user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

#Configure Docker to start on boot with systemd
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Restart the Docker daemon
sudo systemctl restart docker.service
