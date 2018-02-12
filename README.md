# Ansible

Ansible point of departure.

#### To set up test environment:

```bash
git clone https://github.com/rudibroekhuizen/ansible
cd ansible/vagrant
vagrant up
```

#### Install required roles:
```bash
ansible-galaxy install -r requirements.yml
```

Roles managed by requirements.yml, find them in the .ansible folder.



```bash
ansible-playbook -i inventory base.yml --tags=packages
```
