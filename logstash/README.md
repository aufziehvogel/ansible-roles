Logstash
========

This is a role for logstash. It will install logstash together with some
default input settings and an output setting to elasticsearch.

Role Variables
--------------

- `logstash_beats_port`: The port used for communication with beats
- `logstash_tcp_port`: The port used to receive tcp messages
- `logstash_elasticsearch_host`: The host address of the elasticsearch server

Prerequisites
-------------

This role requires `elasticsearch` to be installed on any available server.

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - elasticsearch
         - logstash

License
-------

MIT
