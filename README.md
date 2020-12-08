# HomeServerPi

This repository contains Ansible playbooks, configs, scripts etc. for my small home server, which is a Raspberry Pi 4B with 4GB RAM running on Raspberry Pi OS.

Currently, the contents of the main branch are for *Debian 10 Buster*.
Other releases can be found in separate branches going by the name of the Debian release that they were built for.

* Ansible playbooks
* configs

* scripts

**openvpn/cloudflare-update-record.sh**

*Forked from [benkulbertis](https://gist.github.com/benkulbertis/fff10759c2391b6618dd)*

Updates a cloudflare DNS record with the systems current external IPv4 address.
