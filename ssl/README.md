SSL
=========

This is a role to setup SSL with letsencrypt for multiple domains with
haproxy on the frontend.

This role will also provide a file `ssl/ssl_secure.conf` in the nginx
directory which can be used from your roles to increase SSL security.

Requirements
------------

You need to have haproxy installed.

The domains for which you want to request certificates, must serve files from
`/var/www/letsencrypt` for ACME challenges. For example, for nginx you'd
want to use:

    location /.well-known/acme-challenge {                                      
        root /var/www/letsencrypt;                                              
        allow all;                                                              
    }

Role Variables
--------------

You must set the variables `ssl_certbot_mail` to your mail address and the
variable `ssl_domains` to dictionary with the key being the folder name in which
you want to store the certificates and the value being a list of domain names
for which the certificate should be issued.

    ssl_certbot_mail: mail@example.com
    ssl_domains:
      example.com:
        - example.com
        - www.example.com
      example.org: ['example.org']

For each entry in the dictionary, certbot will issue one certificate that
is valid for the given domains.

Other configuration variables:

- `ssl_keep_ngix_conf`: Set this to `true` if you want to keep the nginx
  configuration file from this role (i.e. you do not ship your own nginx
  configuration file)

Dependencies
------------

None

Example Playbook
----------------

Example usage:

    - hosts: servers
      roles:
         - ssl

License
-------

MIT
