jupyter-notebook-nginx
======================

This is a role to install jupyter notebook behind an nginx reverse proxy
and with supervisor as daemon manager.

Requirements
------------

The system has to be a Debian system (or another system that has a package
called `jupyter-notebook`).

You also need to setup the roles nginx and SSL to use this role.

Role Variables
--------------

- `jupyter_user`: The user which should run jupyter
- `jupyter_group`: The group which should run jupyter
- `jupyter_passwordhash`: The password hash for jupyter notebook
- `jupyter_nginx_listen_port`: The port to which nginx should listen
- `jupyter_nginx_server_name`: The domain name you want to use
- `jupyter_nginx_login_username`: The login username (Basic Auth)
- `jupyter_nginx_login_passwordhash`: The password hash for basic auth
- `jupyter_notebooks_dir`: The directory in which all notebooks are

Example Playbook
----------------

To use this role in a playbook, you have to install the other required roles,
too. Moreover, you'll have to point to a vars file to use for the SSL role.

    - hosts: database
      vars_files:
         - "vars/ssl_jupyter.yml"
      roles:
         - ssl
         - nginx
         - jupyter-notebook-nginx

License
-------

MIT
