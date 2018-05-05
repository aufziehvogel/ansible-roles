pidar-nginx
===========

This is a role to install pidar behind an nginx reverse proxy
with supervisor as daemon manager.

Requirements
------------

You also need to setup the roles nginx and SSL to use this role.

Role Variables
--------------

- `pidar_user`: The user which should run pidar
- `pidar_group`: The group which should run pidar
- `pidar_nginx_port`: The non-SSL port to which nginx should listen
- `pidar_nginx_ssl_port`: The SSL port to which nginx should listen
- `pidar_nginx_server_name`: The domain name you want to use
- `pidar_install_dir`: The directory to which you want to download pidar
- `pidar_gunicorn_port`: The port on which nginx and gunicorn should
  communicate
- `pidar_dbconn`: The database connection string that should be used, e.g.
  `sqlite:///pidar.sqlite` or `postgresql://user:pw@host/database`
- `pidar_mail_host`: The SMTP server that should be used to send mails
- `pidar_mail_user`: The user that should be used to login to SMTP
- `pidar_mail_password`: The password that should be used to login to SMTP
- `pidar_mail_sender`: The mail address that should be used to send mails
- `pidar_email_healthchecks_url`: A HTTP endpoint to query after each
  successful email notification check
  

Example Playbook
----------------

To use this role in a playbook, you have to install the other required roles,
too. Moreover, you'll have to point to a vars file to use for the SSL role.

    - hosts: database
      vars_files:
         - "vars/ssl_pidar.yml"
      roles:
         - nginx
         - pidar-nginx
         - ssl

License
-------

MIT
