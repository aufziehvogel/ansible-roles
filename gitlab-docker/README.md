jupyter-notebook-nginx
======================

This is a role to install the docker container of GitLab.

Requirements
------------

The system must be Debian stretch.

Role Variables
--------------

- `gitlab_docker_debian_version`: The version of Debian you are running
  (e.g. stretch)
- `gitlab_docker_data_dir`: The directory in which you want GitLab to store
  its data on the host machine
- `gitlab_docker_http_port`: The port on which you want to expose the
  HTTP port from the docker container
- `gitlab_docker_ssl_port`: The port on which you want to expose the SSH
  connection

Example Playbook
----------------

This role is most useful together with other additional roles, e.g. for
HTTP termination.

    - hosts: database
      vars_files:
         - "vars/ssl_gitlab.yml"
      roles:
         - gitlab-docker
         - ssl
         - nginx
         - gitlab-docker-nginx

License
-------

MIT
