# HomeServerPi

This repository contains Ansible playbooks, configs, scripts etc. for my small home server, which is a Raspberry Pi 4B with 4GB RAM running on Raspberry Pi OS.

Currently, the contents of the main branch are for Raspberry Pi OS based on **Debian 10 Buster**.

Other releases can be found in separate branches going by the name of the Debian release that they were built for.

## ansible/

### hifiberry_bluetooth.yml

### initial_setup.yml

### motioneye.yml

### nextcloud.yml

### streameye.yml

### syncthing.yml



## configs/

### apache2/nextcloud.conf

### bluetooth/

#### 99-bluetooth-udev.rules

#### aliases.conf

#### bluealsa_override.conf

#### bluealsa-aplay.service

#### bt-agent.service

#### bthelper_override.conf

#### main.conf

### boot/config.txt

### mariadb/

#### .my.cnf

#### 50-server.cnf

#### debian.cnf

### nginx/custom.conf

### sshd/sshd_config

### streameye/streameye.service

### syncthing/syncthing_apt-preference

### unattended-upgrades/50unattended-upgrades

### vim/vimrc



## scripts/

### bluetooth/bluetooth-udev

### openvpn/cloudflare-update-record.sh

*Forked from [benkulbertis](https://gist.github.com/benkulbertis/fff10759c2391b6618dd)*

Updates a cloudflare DNS record with the systems current external IPv4 address.

### streameye/streameye.sh
