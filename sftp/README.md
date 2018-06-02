sftp
=====

This role prepares a host to act as an SFTP server.

Requirements
------------

None

Role Variables
--------------

- `sftp_group`: The name of the group to be used for SFTP
- `sftp_users`: A list of users that should have SFTP privileges (but no
  other privileges on the host). **Make sure not to set your primary login
  user for your server here or you will get locked out of your server, because
  we set the shell to `/sbin/nologin`!**
- `sftp_data_dir`: The base directory where you want to store all data

Dependencies
------------

None

Example Playbook
----------------

Usage is as simple as:

    - hosts: servers
      roles:
         - sftp

License
-------

MIT
