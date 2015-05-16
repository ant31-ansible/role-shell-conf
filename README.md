Shell conf
===========

Simple role to send shell config files to hosts

Requirements
------------

- zsh or bash

Dependencies
------------

 - None

Role default variables
----------

shell: auto   # zsh or bash or auto

Example Playbook
----------------

```yaml
---
- hosts: all
  roles:
    - role: shell-conf
      shell: zsh
```

License
-------

MIT
