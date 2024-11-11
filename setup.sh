#/bin/bash/

# Fail on any command.
# set -eux pipefail

apt-get update
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#  tee /etc/apt/sources.list.d/docker.list > /dev/null
#apt-get update

#for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do apt-get remove $pkg; done
apt-get install neofetch cowsay fortune tint micro cmatrix tty-clock # docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run hello-world
apt-get update
apt upgrade
docker --version

docker compose up -d

docker compose logs --follow
echo 
echo 1. Go to the ports tab
echo
echo 2. Right click the first port
echo and under Port Visiblility 
echo choose Public
echo
echo 3. repeat step 2 until both ports are Public
echo 
echo 4. then just open the link in a new tab
echo
echo Note: that if you see a number in
echo source control click it
echo put Windows in the message bar
echo then click the Commit button
echo then click Sync Changes