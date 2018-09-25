Filebeat
========

This is a role for filebeat. It will install filebeat.

Role Variables
--------------

None

Prerequisites
-------------

This role requires `logstash` to be installed on any available server.

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: application
      roles:
         - filebeat

License
-------

MIT
