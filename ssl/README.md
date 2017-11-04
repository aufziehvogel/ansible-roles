SSL
=========

This is a role to setup SSL with letsencrypt for multiple domains with
haproxy on the frontend.

Requirements
------------

You need to have haproxy installed.

Role Variables
--------------

You must set the variables `ssl_certbot_mail` to your mail address and the
variable `ssl_domains` to a list of lists of lists (because ansible does
[flattening of lists](https://github.com/ansible/ansible/issues/5913) in
`with_items`).

    ssl_certbot_mail: mail@example.com
    ssl_domains:
      -
        - ['example.com', 'www.example.com']
        - ['example.org']

For each line in this configuration, certbot will issue one certificate that
is valid for the given domains.

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
