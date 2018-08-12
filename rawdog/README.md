rawdog
===========

A role to setup the RSS Aggregator rawdog.

Requirements
------------

Debian

Role Variables
--------------

- `rawdog_git_url`: The URL from which rawdog can be checked out
- `rawdog_dest_path`: The folder to which rawdog should be installed
- `rawdog_user`: The user under which rawdog should run

Example Playbook
----------------

    - hosts: servers
      roles:
        - rawdog

License
-------

MIT
