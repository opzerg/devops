# apt update
sudo apt-get update

# installation dependency package
sudo apt-get install \
	ca-certificates \
	curl \
	gnupg \
	lsb-release

# regist docker gpg key and docker apt repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
	"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# apt update & install docker packages
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# add docker group
sudo usermod -aG docker $USER
