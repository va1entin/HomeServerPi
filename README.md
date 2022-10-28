# HomeServerPi

This repository contains Ansible playbooks, configs, scripts etc. for my small home server, which is a Raspberry Pi 4B with 4GB RAM running on Raspberry Pi OS.

Currently, the contents of the main branch are for Raspberry Pi OS based on **Debian 11 Buster**.

## More swap

```bash
dphys-swapfile swapoff
```

```bash
vim /etc/dphys-swapfile
```

CONF_SWAPSIZE=10240
CONF_MAXSWAP=20480

```bash
dphys-swapfile setup
dphys-swapfile swapon
reboot
```