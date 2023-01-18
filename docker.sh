#!/bin/bash

# Update system packages
sudo yum update -y

# Add the Docker repository
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce

# Start the Docker service
sudo systemctl start docker

# Verify that the Docker service is running
sudo systemctl status docker

# Add user to the Docker group
sudo usermod -aG docker $(whoami)

# Enable Docker to start at boot time
sudo systemctl enable docker
