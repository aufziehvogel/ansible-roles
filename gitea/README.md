Gitea
=====

This is a role to install gitea. gitea will be installed
from the official binary release, not from the OS repository.

Requirements
------------

None

Role Variables
--------------

- `gitea_package_url`: The URL to the binary that should be downloaded
  and installed
- `gitea_user`: The user which should run gitea (will be created newly)
- `gitea_group`: The group which should run gitea (will be created newly)
- `gitea_http_port`: The HTTP port to which gitea should listen
- `gitea_ssh_port`: The SSH port to which gitea should listen
- `gitea_domain`: The domain on which gitea will run
- `gitea_url`: The URL on which gitea will be available

Postgres variables:

- `gitea_postgres_host`
- `gitea_postgres_database`
- `gitea_postgres_user`
- `gitea_postgres_password`

Secret variables for which you must generate a random key and which must be
set by you:

- `gitea_jwt_secret`
- `gitea_internal_token`
- `gitea_secret_key`
- `gitea_lfs_jwt_secret`

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
        - gitea

It is useful to combine this role with an HTTP reverse proxy and SSL
certificates:

    - hosts: services
      vars_files:
        - "vars/gitea.yml"
        - "vars/gitea_secret.yml"
      roles:
        - gitea
        - ssl
        - nginx-passthrough

License
-------

MIT
