kibana
============

Installs kibana.

Requirements
------------

None

Role Variables
--------------

Role variables are:

- `kibana_user`: The user under which kibana should run
- `kibana_group`: The group under which kibana shoul run

Dependencies
------------

None

Example Playbook
----------------

Usage is as simple as:

    - hosts: servers
      roles:
        - kibana

Usually, you will use it behind a reverse-proxy like nginx. This can be
achieved with my other role:

    - hosts: servers
      roles:
        - kibana
        - role: nginx-passthrough
          nginx_passthrough_server_name: kibana.example.com
          nginx_passthrough_name: kibana
          nginx_passthrough_target_host: localhost
          nginx_passthrough_target_port: 5601

License
-------

MIT
