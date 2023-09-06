# ECM Infrastructure: Ansible

(TODO)

## Host file (inventory)

```bash
# GEN Environment
172.31.45.1 cerberus.informantem.gen
172.31.45.2 argus.informantem.gen
# PRT Environment
172.31.46.1 wclt01.informantem.prt
172.31.46.2 wdc01.informantem.prt
172.31.46.3 lddb01.informantem.prt
172.31.46.4 lkmt01.informantem.prt
172.31.46.5 lknd01.informantem.prt
172.31.46.6 lknd02.informantem.prt
172.31.46.7 lknd03.informantem.prt
172.31.46.8 ldcnt01.informantem.prt
172.31.46.9 ldwf01.informantem.prt
172.31.46.10 ldpoc01.informantem.prt
172.31.46.11 wweb01.informantem.prt
172.31.46.12 wcc01.informantem.prt
# DEV Environment
172.31.47.1 wclt01.informantem.develop
172.31.47.2 wdc01.informantem.develop
172.31.47.3 lddb01.informantem.develop
172.31.47.4 lkmt01.informantem.develop
172.31.47.5 lknd01.informantem.develop
172.31.47.6 lknd02.informantem.develop
172.31.47.7 lknd03.informantem.develop
172.31.47.8 ldcnt01.informantem.develop
172.31.47.9 ldwf01.informantem.develop
172.31.47.10 wweb01.informantem.develop
172.31.47.11 wcc01.informantem.develop
# QA Environment
172.31.48.1 wclt01.bravantic.qa
172.31.48.2 wdc01.bravantic.qa
172.31.48.3 lddb01.bravantic.qa
172.31.48.4 lkmt01.bravantic.qa
172.31.48.4 k3sloadb.bravanti.qa
172.31.48.5 lknd01.bravantic.qa
172.31.48.6 lknd02.bravantic.qa
172.31.48.7 lknd03.bravantic.qa
172.31.48.8 ldcnt01.bravantic.qa
172.31.48.9 ldwf01.bravantic.qa
172.31.48.10 wweb01.bravantic.qa
172.31.48.11 wcc01.bravantic.qa
# DM Environment
172.31.49.1 wclt01.bravantic.dm
172.31.49.2 wdc01.bravantic.dm
172.31.49.3 lddb01.bravantic.dm
172.31.49.4 lkmt01.bravantic.dm
172.31.49.4 k3sloadb.bravantic.dm
172.31.49.5 lknd01.bravantic.dm
172.31.49.6 lknd02.bravantic.dm
172.31.49.7 lknd03.bravantic.dm
172.31.49.8 ldcnt01.bravantic.dm
172.31.49.9 ldwf01.bravantic.dm
172.31.49.10 wcc01.bravantic.dm
# PRD Environment
172.31.50.1 wclt01.bravantic.prd
172.31.50.2 st01.bravantic.prd
172.31.50.3 lddb01.bravantic.prd
172.31.50.4 lkmt01.bravantic.prd
172.31.50.5 lknd01.bravantic.prd
172.31.50.6 lknd02.bravantic.prd
172.31.50.7 lknd03.bravantic.prd
172.31.50.8 ldcnt01.bravantic.prd
172.31.50.9 ldwf01.bravantic.prd
```

## SSH commands (building ssh entries from Cerberus)

```bash
# PRT Environment
ssh lroot@wclt01.informantem.prt
ssh lroot@wdc01.informantem.prt
ssh lroot@lddb01.informantem.prt
ssh lroot@lkmt01.informantem.prt
ssh lroot@lknd01.informantem.prt
ssh lroot@lknd02.informantem.prt
ssh lroot@lknd03.informantem.prt
ssh lroot@ldcnt01.informantem.prt
ssh lroot@ldwf01.informantem.prt
ssh lroot@ldpoc01.informantem.prt

# DEV Environment
ssh lroot@wclt01.informantem.develop
ssh lroot@wdc01.informantem.develop
ssh lroot@lddb01.informantem.develop
ssh lroot@lkmt01.informantem.develop
ssh lroot@lknd01.informantem.develop
ssh lroot@lknd02.informantem.develop
ssh lroot@lknd03.informantem.develop
ssh lroot@ldcnt01.informantem.develop
ssh lroot@ldwf01.informantem.develop
ssh lroot@wweb01.informantem.develop
ssh lroot@learning.informantem.develop

# QA Environment
ssh lroot@wclt01.bravantic.qa
ssh lroot@wdc01.bravantic.qa
ssh lroot@lddb01.bravantic.qa
ssh lroot@lkmt01.bravantic.qa
ssh lroot@lknd01.bravantic.qa
ssh lroot@lknd02.bravantic.qa
ssh lroot@lknd03.bravantic.qa
ssh lroot@ldcnt01.bravantic.qa
ssh lroot@ldwf01.bravantic.qa
ssh lroot@wweb01.bravantic.qa
ssh lroot@learning.bravantic.qa

# DM Environment
ssh lroot@wclt01.bravantic.dm
ssh lroot@wdc01.bravantic.dm
ssh lroot@lddb01.bravantic.dm
ssh lroot@lkmt01.bravantic.dm
ssh lroot@lknd01.bravantic.dm
ssh lroot@lknd02.bravantic.dm
ssh lroot@lknd03.bravantic.dm
ssh lroot@ldcnt01.bravantic.dm
ssh lroot@ldwf01.bravantic.dm
ssh lroot@wweb01.bravantic.dm
ssh lroot@learning.bravantic.dm

# PRD Environment
ssh lroot@wclt01.bravantic.prd
ssh lroot@wdc01.bravantic.prd
ssh lroot@lddb01.bravantic.prd
ssh lroot@lkmt01.bravantic.prd
ssh lroot@lknd01.bravantic.prd
ssh lroot@lknd02.bravantic.prd
ssh lroot@lknd03.bravantic.prd
ssh lroot@ldcnt01.bravantic.prd
ssh lroot@ldwf01.bravantic.prd
ssh lroot@wweb01.bravantic.prd
ssh lroot@learning.bravantic.prd
```

## Setup SSH Keys

Resources: [https://jonamiki.com/2015/04/03/how-to-ssh-using-a-public-key-instead-of-password/](https://jonamiki.com/2015/04/03/how-to-ssh-using-a-public-key-instead-of-password/)

```bash
ssh-keygen -t rsa
```

  **skip passphrase**

```bash
ssh lroot@SERVER_DESTINATION_HOSTNAME "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub SERVER_DESTINATION_HOSTNAME:.ssh/authorized_keys
```

Sample

```bash
ssh lroot@SERVER_DESTINATION_HOSTNAME "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub SERVER_DESTINATION_HOSTNAME:.ssh/authorized_keys
ssh lroot@SERVER_DESTINATION_HOSTNAME "docker image prune -y"
```

Example

```bash
ssh lroot@argus.informantem.gen "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub argus.informantem.gen:.ssh/authorized_keys
ssh lroot@argus.informantem.gen "docker image prune --all --force"
```

```bash
ssh lroot@lddb01.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub lddb01.bravantic.dm:.ssh/authorized_keys
ssh lroot@lkmt01.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub lkmt01.bravantic.dm:.ssh/authorized_keys
ssh lroot@lknd01.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub lknd01.bravantic.dm:.ssh/authorized_keys
ssh lroot@lknd02.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub lknd02.bravantic.dm:.ssh/authorized_keys
ssh lroot@lknd03.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub lknd03.bravantic.dm:.ssh/authorized_keys
ssh lroot@ldcnt01.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub ldcnt01.bravantic.dm:.ssh/authorized_keys
ssh lroot@ldwf01.bravantic.dm "mkdir ~/.ssh" && scp ~/.ssh/id_rsa.pub ldwf01.bravantic.dm:.ssh/authorized_keys
```

Create file `p.txt` with password in plain text....

## Other form to skip passphrase

Generate the keypair ssh

```
ssh-keygen


```

Copy the public key into the server using the ssh-copy-id command

```
ssh-copy-id usuario@servidor

```

```
ssh-copy-id lroot@ldcnt01.bravantic.dm
```

try the connection

```
ssh usuario@servidor

```

```
ssh lroot@ldcnt01.bravantic.dm
```


## Commands

```bash
cd ~/infrastructure/ansible
```

```bash
ansible -m ping --user lroot -i ./inventory/hosts gen
ansible -m ping --user lroot -i ./inventory/hosts prt
ansible -m ping --user lroot -i ./inventory/hosts develop
ansible -m ping --user lroot -i ./inventory/hosts qa
ansible -m ping --user lroot -i ./inventory/hosts dm
ansible -m ping --user lroot -i ./inventory/hosts prd

ansible -i ./inventory/hosts-windows prt -m win_ping
```

### Commands with playbook

### **Linux**

#### Docker Prune (Docker-prune Playbook not working | Please use ssh approach)

```bash
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l gen --become-pass-file p.txt
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/docker-prune.yml -i ./inventory/hosts -l prd --become-pass-file p.txt
```

#### Docker prune using ssh

```bash
ssh lroot@cerberus.informantem.gen "docker image prune --all --force"
ssh lroot@argus.informantem.gen "docker image prune --all --force"

ssh lroot@lddb01.informantem.prt "docker image prune --all --force"
ssh lroot@lkmt01.informantem.prt "docker image prune --all --force"
ssh lroot@lknd01.informantem.prt "docker image prune --all --force"
ssh lroot@lknd02.informantem.prt "docker image prune --all --force"
ssh lroot@lknd03.informantem.prt "docker image prune --all --force"
ssh lroot@ldcnt01.informantem.prt "docker image prune --all --force"
ssh lroot@ldwf01.informantem.prt "docker image prune --all --force"
ssh lroot@ldpoc01.informantem.prt "docker image prune --all --force"

ssh lroot@lddb01.informantem.develop "docker image prune --all --force"
ssh lroot@lkmt01.informantem.develop "docker image prune --all --force"
ssh lroot@lknd01.informantem.develop "docker image prune --all --force"
ssh lroot@lknd02.informantem.develop "docker image prune --all --force"
ssh lroot@lknd03.informantem.develop "docker image prune --all --force"
ssh lroot@ldcnt01.informantem.develop "docker image prune --all --force"
ssh lroot@ldwf01.informantem.develop "docker image prune --all --force"
ssh lroot@learning.informantem.develop "docker image prune --all --force"

ssh lroot@lddb01.bravantic.qa"docker image prune --all --force"ssh 
ssh lroot@ldcnt01.bravantic.qa"docker image prune --all --force"ssh
ssh lroot@ldwf01.bravantic.qa"docker image prune --all --force"ssh
```

#### Docker volume prune ssh

```bash
ssh lroot@cerberus.informantem.gen "docker volume prune --force"
ssh lroot@argus.informantem.gen "docker volume prune --force"

ssh lroot@lddb01.informantem.prt "docker volume prune --force"
ssh lroot@lkmt01.informantem.prt "docker volume prune --force"
ssh lroot@lknd01.informantem.prt "docker volume prune --force"
ssh lroot@lknd02.informantem.prt "docker volume prune --force"
ssh lroot@lknd03.informantem.prt "docker volume prune --force"
ssh lroot@ldcnt01.informantem.prt "docker volume prune --force"
ssh lroot@ldwf01.informantem.prt "docker volume prune --force"
ssh lroot@ldpoc01.informantem.prt "docker volume prune --force"

ssh lroot@lddb01.informantem.develop "docker volume prune --force"
ssh lroot@lkmt01.informantem.develop "docker volume prune --force"
ssh lroot@lknd01.informantem.develop "docker volume prune --force"
ssh lroot@lknd02.informantem.develop "docker volume prune --force"
ssh lroot@lknd03.informantem.develop "docker volume prune --force"
ssh lroot@ldcnt01.informantem.develop "docker volume prune --force"
ssh lroot@ldwf01.informantem.develop "docker volume prune --force"
ssh lroot@learning.informantem.develop "docker volume prune --force"


ssh lroot@lddb01.bravantic.qa"docker volume prune --all --force"ssh 
ssh lroot@ldcnt01.bravantic.qa"docker volume prune --all --force"ssh
ssh lroot@ldwf01.bravantic.qa"docker volume prune --all --force"ssh
```

- For docker prune to run, it's required to install on the target machines:

```bash
sudo apt install python3-pip
pip install docker
```

- or

```bash
sudo apt install python3-pip && pip install docker
```

#### Checking ubuntu version

```
ansible-playbook ./playbooks/ubuntu-version.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/ubuntu-version.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/ubuntu-version.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/ubuntu-version.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/ubuntu-version.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

#### Gathering memory and HD info

```bash
cd dis_management/infrastructure/ansible/
ansible-playbook ./playbooks/mem-hd-info.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/mem-hd-info.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/mem-hd-info.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/mem-hd-info.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/mem-hd-info.yml -i ./inventory/prd -l prd --become-pass-file p.txt

```

#### apt

```bash
ansible-playbook ./playbooks/apt.yml -i ./inventory/hosts -l gen --become-pass-file p.txt
ansible-playbook ./playbooks/apt.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/apt.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/apt.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/apt.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/apt.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

#### Net-tools

```bash
ansible-playbook ./playbooks/net-tools.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/net-tools.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/net-tools.yml -i ./inventory/hosts -l prd --become-pass-file p.txt
```

#### Set timezone

```bash
ansible-playbook ./playbooks/timezone.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/timezone.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/timezone.yml -i ./inventory/hosts -l prd --become-pass-file p.txt
```

#### apt-dist

```bash
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/prd -l prd --become-pass-file p.txt
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
```

#### Reboot hosts

```bash
ansible-playbook ./playbooks/reboot.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/reboot.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/reboot.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/reboot.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/reboot.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

#### Install stress-ng

```
ansible-playbook ./playbooks/install-stress-ng.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/install-stress-ng.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/install-stress-ng.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/install-stress-ng.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/install-stress-ng.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

## Mem provisioning

```bash
ansible-playbook ./playbooks/mem-provisioning.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/mem-provisioning.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/mem-provisioning.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/mem-provisioning.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/mem-provisioning.yml -i ./inventory/prd-l prd --become-pass-file p.txt
```

#### Create cronjob for mem provisioning on restart

```bash
ansible-playbook ./playbooks/deploy-cronjob-stress-ng.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/deploy-cronjob-stress-ng.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/deploy-cronjob-stress-ng.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/deploy-cronjob-stress-ng.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/deploy-cronjob-stress-ng.yml -i ./inventory/prd-l prd --become-pass-file p.txt
```

#### Remove cronjob memory provisioning

```
ansible-playbook ./playbooks/remover-cron-job-stress-ng.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
```

#### Python

```bash
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l gen --become-pass-file p.txt
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/python03pip.yml -i ./inventory/hosts -l prd --become-pass-file p.txt
ansible-playbook ./playbooks/pip_module_docker.yml -i ./inventory/hosts -l gen --become-pass-file p.txt

```

#### Actualizar o portainer

```
ansible-playbook ./playbooks/actualizar-portainer.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
```

#### Docker system restart

```bash

ansible-playbook ./playbooks/systemctl-docker-restart.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
ansible-playbook ./playbooks/systemctl-docker-restart.yml -i ./inventory/hosts -l develop --become-pass-file p.txt
ansible-playbook ./playbooks/systemctl-docker-restart.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
ansible-playbook ./playbooks/systemctl-docker-restart.yml -i ./inventory/hosts -l prt --become-pass-file p.txt
```

#### Docker instalation

```
ansible-playbook ./playbooks/deploy-docker.yml -i ./inventory/hosts -l dm --become-pass-file p.txt

ansible-playbook ./playbooks/docker.yml -i ./inventory/hosts -l dm --become-pass-file p.txt
```

#### Ansible update

```bash
python3 -m pip install --upgrade --user ansible
```

#### Ansible galaxy collection upgrade

```bash
ansible-galaxy collection list
```

```bash
ansible-galaxy collection install community.docker --upgrade
```

- Resources: [https://github.com/ansible-collections/community.docker](https://github.com/ansible-collections/community.docker)

### **Backup postgres DB containers**

```
ansible-playbook ./playbooks/backup-postgresql.yml -i ./inventory/lddb -l db --become-pass-file p.txt

```

### **Cronjob**

```
crontab -e
```

add following on bottom of file (if asked, choose nano as editor, it's simplier):

```
0 2 * * * ansible-playbook ~/dis_management/infrastructure/ansible/playbooks/backup-postgresql.yml -i ~/dis_management/infrastructure/ansible/inventory/lddb -l db --become-pass-file ~/dis_management/infrastructure/ansible/p.txt
```

### **Windows**

```
ansible-playbook ./playbooks/windows-updates.yml -i ./inventory/hosts-windows -l prt
ansible-playbook ./playbooks/windows-reboot.yml -i ./inventory/hosts-windows -l prt
```

```bash
ansible-playbook ./playbooks/apt-dist.yml -i ./inventory/hosts -l [XPTO] --become-pass-file p.txt
ansible-playbook ./playbooks/net-tools.yml -i ./inventory/hosts -l [XPTO] --become-pass-file p.txt
ansible-playbook ./playbooks/timezone.yml -i ./inventory/hosts -l [XPTO] --become-pass-file p.txt
```

Not needed

```bash
ansible-playbook ./playbooks/qemu-guest-agent.yml -i ./inventory/hosts [XPTO]
```

### **Upgrade and reboot ubuntu distro**

```
ansible-playbook ./playbooks/upgrade-ubuntu.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

## Actualizar, limpar, reinicar - not working

```
ansible-playbook ./playbooks/actualizar-limpar-reiniciar.yml -i ./inventory/prd -l prd --become-pass-file p.txt
```

## Setup windows

setup windows server 2022
    https://pve.proxmox.com/wiki/Windows_2022_guest_best_practices
enable remote desktop
install python
    https://www.python.org/ftp/python/3.10.1/python-3.10.1-amd64.exe
winrm setup
    https://www.ansible.com/blog/connecting-to-a-windows-host
    https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#winrm-setup

    notes:

    ``powershell     mkdir ansible     cd .\ansible     Invoke-WebRequest https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1     Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force     .\ConfigureRemotingForAnsible.ps1     pip install pywinrm     python -m pip install --upgrade pip     ``

#### Stoping all conteiners

```
ansible-playbook ./playbooks/stop-conteiners.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
```

#### Starting all stoped conteiners

```
ansible-playbook ./playbooks/start-all-stoped-conteiner.yml -i ./inventory/hosts -l qa --become-pass-file p.txt
```
