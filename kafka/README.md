Kafka
=====

This is a role to install kafka. Kafka will be installed from the official
website, not from the OS repository. The role will run the bundled zookeeper
single-node instance.

Requirements
------------

The system has to be a Debian system (or another system that has a package
called `openjdk-8-jre`).

Role Variables
--------------

- `kafka_user`: The user which should run kafka
- `kafka_group`: The group which should run kafka
- `kafka_listen_address`: The IP address to which kafka should listen, use
  `localhost` to restrict connections to localhost

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - kafka

License
-------

MIT
