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

Currently, this role does not have any variables.

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - elasticsearch

License
-------

MIT
