    1  sudo apt update && sudo apt install -y gnupg software-properties-common curl
    2  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null
    3  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    4  sudo apt update && sudo apt install -y terraform
    5  terraform --version
    6  sudo mkdir -p /etc/apt/keyrings
    7  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo tee /etc/apt/keyrings/hashicorp-archive-keyring.gpg >/dev/null
    8  echo "deb [signed-by=/etc/apt/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    9  sudo apt update && sudo apt install -y terraform
   10  sudo snap install terraform
   11  sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
   12  wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
   13  gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
   14  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
   15  sudo apt update
   16  sudo apt-get install terraform
   17  teraaform
   18  terraform --version
   19  git
   20  git --help
   21  git -version
   22  git --version
   23  az 
   24  export AWS_ACCESS_KEY_ID=
   25  curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
   26  az
   27  az --version
   28  azure login
   29  az login
   30  history > readme.md
