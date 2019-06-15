nginx-passthrough
=================

This is a role to have nginx pass through HTTP traffic to another system
or serve as an HTTPS endpoint and pass on the traffic via HTTP to another
system on the host.

Requirements
------------

You also need to setup the roles nginx and SSL to use this role.

Role Variables
--------------

- `nginx_passthrough_allow_sites:`: List of IP ranges you want to allow to
  access the site (default one element: `all`)
- `nginx_passthrough_allow_acme:`: Which IP range you want to allow to access
  the ACME challenge (default: `all`)
- `nginx_passthrough_listen_port`: The port to which nginx should listen
- `nginx_passthrough_listen_port_ssl`: The port to which nginx should listen
  for SSL traffic
- `nginx_passthrough_name`: A name for your projects, will be used for
  folder names
- `nginx_passthrough_server_name`: The server DNS name to which nginx should
  listen
- `nginx_passthrough_server_name_alternatives`: Alternative hostnames that
  should redirect to the main hostname
- `nginx_passthrough_target_host`: The hostname to which nginx should relay the
  traffic
- `nginx_passthrough_target_port`: The target port of your service to which
  nginx should relay the traffic
- `nginx_passthrough_target_socket`: If you serve your WSGI project on a
  socket, you can also use this setting instead of
  `nginx_passthrough_target_host` and `nginx_passthrough_target_port`, the
  value must include the `unix:` prefix, e.g. `unix:/run/gunicorn/project.sock`

Optionally, you can define the following variables to protect the site with
username and password:

- `nginx_passthrough_listen_port`: The port to which nginx should listen
- `nginx_passthrough_listen_port_ssl`: The port to which nginx should listen
  for SSL traffic
- `nginx_passthrough_name`: A name for your projects, will be used for
  folder names
- `nginx_passthrough_server_name`: The server DNS name to which nginx should
  listen
- `nginx_passthrough_server_name_alternatives`: Alternative hostnames that
  should redirect to the main hostname
- `nginx_passthrough_target_host`: The hostname to which nginx should relay the
  traffic
- `nginx_passthrough_target_port`: The target port of your service to which
  nginx should relay the traffic
- `nginx_passthrough_target_socket`: If you serve your WSGI project on a
  socket, you can also use this setting instead of
  `nginx_passthrough_target_host` and `nginx_passthrough_target_port`, the
  value must include the `unix:` prefix, e.g. `unix:/run/gunicorn/project.sock`

Optionally, you can define the following variables to protect the site with
username and password:

- `nginx_passthrough_login_username`: The username to use for login
- `nginx_passthrough_login_passwordhash`: The htaccess password hash from the
  password for login

Other options are:

- `nginx_passthrough_cross_origin_host`: If you want to allow cross origin
  requests (i.e. send the `Access-Control-Allow-Origin` header), specify
  the allowed host (or `*`) with this option

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
