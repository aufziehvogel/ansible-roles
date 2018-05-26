jupyter-notebook-nginx
======================

This is a role to have nginx pass through HTTP traffic to another system
or serve as an HTTPS endpoint and pass on the traffic via HTTP to another
system on the host.

Requirements
------------

You also need to setup the roles nginx and SSL to use this role.

Role Variables
--------------

- `nginx_passthrough_listen_port`: The port to which nginx should listen
- `nginx_passthrough_listen_port_ssl`: The port to which nginx should listen
  for SSL traffic
- `nginx_passthrough_name`: A name for your projects, will be used for
  folder names
- `nginx_passthrough_server_name`: The server DNS name to which nginx should
  listen
- `nginx_passthrough_target_port`: The target port of your service to which
  nginx should relay the traffic

Optionally, you can define the following variables to protect the site with
username and password:

- `nginx_passthrough_login_username`: The username to use for login
- `nginx_passthrough_login_passwordhash`: The htaccess password hash from the
  password for login

Example Playbook
----------------

This role is used in a playbook together with another role for the service
to which nginx should forward the traffic.

    - hosts: website
      vars_files:
         - "vars/project.yml"
      roles:
         - project
         - ssl
         - nginx
         - nginx-passthrough

License
-------

MIT
