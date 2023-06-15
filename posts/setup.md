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
sudo apt-get install git vim chromium-browser python3-venv python3-pip python3-dev awscli -y
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
```

[Yakuake](https://community.linuxmint.com/software/view/yakuake)

[NVM](https://github.com/nvm-sh/nvm)

[VS Code](https://code.visualstudio.com/docs/setup/linux)

#### Docker

[Docker](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

> sudo apt-get install -y docker.io

```sh
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

#### Compose

> sudo curl -SL https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86\_64 -o /usr/local/bin/docker-compose sudo chmod +x /usr/local/bin/docker-compose;

#### Poetry

```sh
curl -sSL https://install.python-poetry.org | python3 -
echo export PATH="/etc/poetry/bin:$PATH" >> ~/.bashrc
```

#### Terraform

https://learn.hashicorp.com/tutorials/terraform/install-cli

https://developer.hashicorp.com/terraform/downloads

> unzip terraform.zip

> sudo mv terraform /usr/local/bin/

#### Task

```sh
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
```
