grafana-docker
==============

This is a role to install the docker container of Grafana.

The container will run on the host network, so that it can reach a locally
running instance of the data backend (e.g. storage). By default, it
will bind to localhost so that you can expose it to the world through an
nginx reverse proxy yourself.

Requirements
------------

Requires the role `docker` to be executed before this role.

Role Variables
--------------

- `grafana_docker_data_dir`: The directory in which you want Grafana to store
  its data on the host machine
- `grafana_docker_server_bind_host`: The hostname to which you want to bind
- `grafana_docker_server_bind_port`: The port you want to use for grafana
- `grafana_docker_hostname`: The hostname under which the Grafana instance will
  be reached, i.e. the external domain you use to reach Grafana
- `grafana_docker_admin_password`: The password for the admin account of grafana

Example Playbook
----------------

This role is most useful together with other additional roles, e.g. for
HTTP termination.

    - hosts: database
      vars_files:
         - "vars/ssl_grafana.yml"
      roles:
         - docker
         - grafana-docker
         - ssl
         - nginx-passthrough

License
-------

MIT
