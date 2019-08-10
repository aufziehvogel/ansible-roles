postgresql
==========

A role to install postgresql.

Requirements
------------

None.

Role Variables
--------------

- `postgresql_listen_global`: Boolean whether PostgreSQL should listen on the
  public interface.
- `postgresql_allow_connections`: A list of allowed connections that should be
  added to the configuration, e.g. `host all all 10.0.0.1/0 md5`.

Dependencies
------------

None.

Example Playbook
----------------

Use like this:

    - hosts: database
      roles:
         - postgresql

License
-------

MIT
