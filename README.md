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
su ansible
```

#### Install required roles:
```bash
ansible-galaxy install -r requirements.yml
```
Roles managed by requirements.yml, find them in the .ansible folder.



```bash
ansible-playbook base.yml
```
