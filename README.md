# Ansible

Ansible launch platform.

To set up test environment:

Roles managed by requirements.yml, find them in the .ansible folder.

```bash
git clone https://github.com/rudibroekhuizen/ansible
cd ansible/vagrant
vagrant up
```

#### Install required roles
```bash
ansible-galaxy install -r requirements.yml
```



```bash
ansible-playbook -i inventory base.yml --tags=packages
```
