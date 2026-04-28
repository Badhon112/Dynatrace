#!/bin/bash
set -e

sudo dnf update -y

# Install Docker (better approach for Fedora/RHEL)
sudo dnf install -y docker-ce docker-ce-cli containerd.io

sudo systemctl enable --now docker

sudo usermod -aG docker $USER

# Docker Compose
mkdir -p ~/.docker/cli-plugins

COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)

ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then ARCH=amd64; fi

curl -SL "https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-linux-${ARCH}" \
  -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

# Buildx
sudo mkdir -p /usr/libexec/docker/cli-plugins

sudo curl -L https://github.com/docker/buildx/releases/download/v0.17.1/docker-buildx-linux-amd64 \
  -o /usr/libexec/docker/cli-plugins/docker-buildx

sudo chmod +x /usr/libexec/docker/cli-plugins/docker-buildx

sudo systemctl restart docker

docker buildx version
docker compose version