sudo yum update -y
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker $USER
newgrp docker
docker info

# Create the plugins directory and download the latest plugin binary
mkdir -p ~/.docker/cli-plugins
curl -SL https://github.com(uname -m) -o ~/.docker/cli-plugins/docker-compose

# Make the plugin executable
chmod +x ~/.docker/cli-plugins/docker-compose

# Verify version
docker compose version
# Define plugin directory
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins

# Detect architecture (x86_64 or aarch64)
ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then ARCH="amd64"; elif [ "$ARCH" = "aarch64" ]; then ARCH="arm64"; fi

# Download latest release
VERSION=$(curl -s https://api.github.com/repos/docker/buildx/releases/latest | grep tag_name | cut -d '"' -f 4)
curl -SL "https://github.com/docker/buildx/releases/download/${VERSION}/buildx-${VERSION}.linux-${ARCH}" -o $DOCKER_CONFIG/cli-plugins/docker-buildx
chmod +x $DOCKER_CONFIG/cli-plugins/docker-buildx
docker buildx version
