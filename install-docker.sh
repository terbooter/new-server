apt-get install -y mc ncdu htop sysstat iftop glances

sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo 'deb [arch=amd64] https://download.docker.com/linux/ubuntu artful stable' >> /etc/apt/sources.list.d/docker.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce=18.03.1~ce-0~ubuntu

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
fi

echo "-----------------------"

cat ~/.ssh/id_rsa.pub