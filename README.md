# Ansible

Ansible point of departure.

#### To set up test environment:

```bash
git clone https://github.com/rudibroekhuizen/ansible
cd ansible/vagrant
vagrant up
```

#### Login to vb-01
```bash
vagrant ssh vb-01
```

#### Change to user ansible
```bash
sudo -s
su ansible
cd /home/ansible/ansible/
```


#### Run a playbook
```bash
ansible-playbook playbooks/postgresql.yml -l psql1
```
