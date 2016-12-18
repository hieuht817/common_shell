# common_shell
# ami install git
sudo yum update -y && sudo yum install -y git

# install docker engine
sudo yum update

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo yum install docker-engine
sudo systemctl enable docker.service
sudo systemctl start docker

curl -sSL https://get.docker.com/ | sh
sudo yum-config-manager --add-repo https://packages.docker.com/1.12/yum/repo/main/centos/7
sudo service docker start
