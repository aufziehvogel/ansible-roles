Sonarqube
=========

This is a role to install Sonarqube. Sonarqube will be installed
from the official website, not from the OS repository.

Requirements
------------

The system has to be a Debian system (or another system that has a package
called `openjdk-8-jre`).

Role Variables
--------------

- `sonarqube_user`: The user which should run sonarqube
- `sonarqube_group`: The group which should run sonarqube
- `sonarqube_database_username`: The username that has to be used to connect
  to the SQL database
- `sonarqube_database_password`: The password that has to be used to connect
  to the SQL database
- `sonarqube_database_url`: The connection string for the connection to the
  SQL database, e.g. `jdbc:postgresql://localhost/sonarqube`
- `sonarqube_host`: The host to which sonarqube should listen
- `sonarqube_port`: The port to which sonarqube should listen

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
         - sonarqube

License
-------

MIT
