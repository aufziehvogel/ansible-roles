kibana-nginx
============

Installs kibana behind an nginx reverse-proxy with password protection.

Requirements
------------

None

Role Variables
--------------

Role variables are:

- `kibana_nginx_user`: The user under which kibana should run
- `kibana_nginx_group`: The group under which kibana shoul run
- `kibana_nginx_listen_port`: The port to which nginx should listen
- `kibana_nginx_server_name`: The server name which nginx should expect
- `kibana_nginx_login_username`: The username for http basic auth
- `kibana_nginx_login_passwordhash`: The hash of the password for the htaccess
  file

Dependencies
------------

None

Example Playbook
----------------

Usage is as simple as:

    - hosts: servers
      roles:
         - kibana-nginx

License
-------

MIT
