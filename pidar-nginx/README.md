pidar-nginx
===========

This is a role to install pidar behind an nginx reverse proxy
with supervisor as daemon manager.

Requirements
------------

You also need to setup the roles nginx and SSL to use this role.

Role Variables
--------------

### System related

- `pidar_name`: A name for the instance which will be used for filenames
  on the filesystem
- `pidar_user`: The user which should run pidar
- `pidar_group`: The group which should run pidar
- `pidar_nginx_port`: The non-SSL port to which nginx should listen
- `pidar_nginx_ssl_port`: The SSL port to which nginx should listen
- `pidar_nginx_server_name`: The domain name you want to use
- `pidar_install_dir`: The directory to which you want to download pidar
- `pidar_gunicorn_port`: The port on which nginx and gunicorn should
  communicate

### Database related

- `pidar_dbconn`: The database connection string that should be used, e.g.
  `sqlite:///pidar.sqlite` or `postgresql://user:pw@host/database`
- `pidar_default_plan_name`: The name of the default plan that a user should
  be assigned to on registration
- `pidar_default_plan_pings`: The number of pings available on the default plan
- `pidar_default_plan_polls`: The number of polls available on the default plan
- `pidar_default_plan_api_access`: Either true or false to enable or disable
  API access on the default plan

### Mail related

- `pidar_mail_host`: The SMTP server that should be used to send mails
- `pidar_mail_user`: The user that should be used to login to SMTP
- `pidar_mail_password`: The password that should be used to login to SMTP
- `pidar_mail_sender`: The mail address that should be used to send mails

### Monitoring related

- `pidar_email_healthchecks_url`: A HTTP endpoint to query after each
- `pidar_polls_healthchecks_url`: A HTTP endpoint to query after each
  successful poll execution

### Web Tracking related

- `pidar_matomo_enabled`: Either true or false to enable or disable matomo
  user logging
- `pidar_matomo_host`: The hostname of your matomo host
- `pidar_matomo_siteid`: The siteid of this site that was assigned by matomo
- `pidar_matomo_deletion_days`: The number of days after which you will delete
  personal data from matomo
- `pidar_google_verification_filename`: The filename of the verification file
  that you have to download and host for Google Webmaster Tools (optional)

### Legal and Contact related

- `pidar_admin_legal_address`: The address of the admin that should be
  displayed on the About page (required in some jurisdictions)
- `pidar_admin_email_address`: The e-mail address at which you can be reached
  for official requests
- `pidar_legal_gdpr_enabled`: Either true or false to enable or disable GDPR
  information on the website

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
