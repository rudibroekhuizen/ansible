# ansible

To set up test environment:

```bash
git clone https://github.com/rudibroekhuizen/ansible-base
cd ansible-base/vagrant
vagrant up
```

```bash
ansible-playbook -i inventory base.yml --tags=packages
```
