# Ansible

Ansible launch platform.

To set up test environment:

```bash
git clone https://github.com/rudibroekhuizen/ansible
cd ansible/vagrant
vagrant up
```

```bash
ansible-playbook -i inventory base.yml --tags=packages
```
