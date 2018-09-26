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
- `kafka_listen_addresses`: A list of listener definitions to which kafka
   should listen, use `PLAINTEXT://localhost:9092` to restrict connections to
   localhost or `PLAINTEXT://0.0.0.0:9092`
- `kafka_listen_addresses_advertised` (*optional*): A list of advertised
   addresses that kafka publishes; if you use `0.0.0.0` for
   `kafka_listen_addresses`, then you must define a value here

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - kafka

License
-------

MIT
