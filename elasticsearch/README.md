Elasticsearch
=============

This is a role to install elasticsearch. Elasticsearch will be installed
from the official elasticsearch website, not from the OS repository.

Requirements
------------

The system has to be a Debian system (or another system that has a package
called `openjdk-8-jre`).

Role Variables
--------------

- `elasticsearch_user`: The user which should run elasticsearch
- `elasticsearch_group`: The group which should run elasticsearch
- `elasticsearch_bind`: Set the interface to which you want to bind or empty
  to keep the default config (`0.0.0.0` for all interfaces)

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - elasticsearch

License
-------

MIT
