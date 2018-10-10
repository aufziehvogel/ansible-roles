thelounge-docker
================

This is a role to install the docker container of thelounge.

Requirements
------------

Requires the role `docker` to be executed before this role.

Role Variables
--------------

- `thelounge_docker_data_dir`: The directory in which you want thelounge
  to store its data on the host machine
- `thelounge_docker_http_public`: Whether or not you want to expose this
  instance publicly through the host
- `thelounge_docker_http_port`: The port on which you want to expose the
  HTTP port from the docker container (only used if
  `thelounge_docker_http_public` is true)
- `thelounge_docker_hostname`: The hostname under which the thelounge
  instance will be reached, i.e. the external domain you use to reach thelounge

Example Playbook
----------------

This role is most useful together with other additional roles, e.g. for
HTTP termination.

    - hosts: database
      vars_files:
         - "vars/thelounge.yml"
      roles:
         - docker
         - thelounge-docker
         - ssl
         - nginx
         - nginx-passthrough

License
-------

MIT
