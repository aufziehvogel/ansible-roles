Graphite
========

This is a role to install graphite. Graphite will be installed from pip
in a virtual environment.

Requirements
------------

The system has to be a Debian system.

Role Variables
--------------

- `graphite_directory`: The directory to which graphite should be installed
- `graphite_endpoint`: Whether you want to install `graphite-api` or
  `graphite-web` as an endpoint to access the data. Currently, only
  `graphite-api` is supported.
- `graphite_user`: The user which should run graphite
- `graphite_group`: The group which should run graphite

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: monitoring
      roles:
         - graphite

License
-------

MIT
