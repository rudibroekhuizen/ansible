#!/bin/bash

ANSIBLE_USER=ansible

# Create Ansible user
adduser --disabled-password --gecos "" $ANSIBLE_USER
mkdir -p /home/$ANSIBLE_USER/.ssh
echo "$ANSIBLE_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$ANSIBLE_USER

# Add created public key to ansible user
cat /vagrant/id_rsa.pub >> /home/$ANSIBLE_USER/.ssh/authorized_keys
chown -R $ANSIBLE_USER:$ANSIBLE_USER /home/$ANSIBLE_USER/.ssh
chmod 600 /home/$ANSIBLE_USER/.ssh/authorized_keys

# Add existing public keys from host to user vagrant
cat /vagrant/authorized_keys >> /home/vagrant/.ssh/authorized_keys
cat /vagrant/authorized_keys >> /home/ubuntu/.ssh/authorized_keys
