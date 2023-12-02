
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes.gpg
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
# sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/kubernetes.gpg

# Add the repository to Apt sources:
# echo \
#   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/kubernetes.gpg] http://apt.kubernetes.io/ \
  kubernetes-xenial main" | \
  sudo tee /etc/apt/sources.list.d/kubernetes.list > /dev/null
sudo apt-get update