# Setup

#### System

```sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
```

#### Firmware

```sh
sudo fwupdmgr get-devices reb
sudo fwupdmgr get-updates -y
sudo fwupdmgr update -y
```

#### SSH

```sh
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
```

#### Tools

```sh
sudo apt-get install git vim python3-venv python3-pip python3-dev awscli -y
```

```sh
sudo apt-get install guake gnome-tweaks -y
```

```sh
sudo apt-get install ubuntu-restricted-extras -y
```

```
git config --global user.name mingiryu
git config --global user.email mingi.ryu@icloud.com
git config --global core.editor "vim"
```

Taskfile
```sh
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
```

Poetry
```sh
curl -sSL https://install.python-poetry.org | python3 -
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
```

[Yakuake](https://community.linuxmint.com/software/view/yakuake)

Disable Alt+`
```sh
gsettings set org.mate.Marco.global-keybindings switch-group 'disabled'
```

[NVM](https://github.com/nvm-sh/nvm)

[VS Code](https://code.visualstudio.com/docs/setup/linux)

Chrome

#### Docker

```sh
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the Docker packages.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify that the Docker Engine installation is successful.
sudo docker run hello-world

# Allow Docker to run w/o sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

> If you use an Ubuntu derivative distro, such as Linux Mint, you may need to use `UBUNTU_CODENAME` instead of `VERSION_CODENAME`.

#### Terraform

https://learn.hashicorp.com/tutorials/terraform/install-cli

https://developer.hashicorp.com/terraform/downloads

> unzip terraform.zip

> sudo mv terraform /usr/local/bin/

