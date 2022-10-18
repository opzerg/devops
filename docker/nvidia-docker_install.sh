
RED='\033[0;31m'
NC='\033[0m'

# regist gpg key & nvidia-docker apt repository
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

# apt update
sudo apt-get update

# install nvidia-docker package
sudo apt-get install -y nvidia-docker2

echo ""
echo \>\> restart docker service following ${RED}\"sudo systemctl restart docker\"${NC}

