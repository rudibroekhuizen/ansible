# Ansible

Ansible point of departure.

### To set up test environment:

```sh
git clone https://github.com/rudibroekhuizen/ansible
cd ansible/vagrant
cp ~/.ssh/authorized_keys authorized_keys
vagrant up
```

### Login to vb-01 using vagrant ssh
```bash
vagrant ssh vb-01
```

### Login to vb-01 using ssh
```bash
ssh vagrant@192.168.56.5
```

### Change to user ansible on vb-01
```bash
sudo -s
su ansible
cd /home/ansible/ansible-project/
```

### Example: run playbook base from vb-01
```bash
ansible-playbook playbooks/base.yml -l psql1
```
