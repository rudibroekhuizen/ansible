#!/bin/bash

ANSIBLE_USER=ansible
ANSIBLE_PROJECT=https://github.com/rudibroekhuizen/ansible

# Install Ansible
apt-get update
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible git

# Create Ansible user
adduser --disabled-password --gecos "" $ANSIBLE_USER
mkdir -p /home/$ANSIBLE_USER/.ssh
echo "$ANSIBLE_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$ANSIBLE_USER

# Set up keys
yes | ssh-keygen -t rsa -f /tmp/id_rsa -N ''
mv /tmp/id_rsa /home/$ANSIBLE_USER/.ssh
cp /tmp/id_rsa.pub /vagrant

chown -R $ANSIBLE_USER:$ANSIBLE_USER /home/$ANSIBLE_USER/.ssh

# Add hosts to hosts file
echo -e '192.168.56.6\n192.168.56.7' >> /etc/ansible/hosts

# Disable ssh host verification
sed -i 's/#host_key_checking/host_key_checking/g' /etc/ansible/ansible.cfg

# Download Ansible base project
su $ANSIBLE_USER -c "git clone $ANSIBLE_PROJECT ~/ansible-project"
#su $ANSIBLE_USER -c "git clone https://github.com/rudibroekhuizen/ansible ~/ansible-myansibleproject"

# Download Ansible roles
su $ANSIBLE_USER -c "ansible-galaxy install -r ~/ansible-project/roles/requirements.yml -p ~/ansible-project/roles"
