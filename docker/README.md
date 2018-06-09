gitlab-docker
=============

This is a role to install the docker container of GitLab.

Requirements
------------

The system must be Debian.

Role Variables
--------------

- `gitlab_docker_debian_version`: The version of Debian you are running
  (e.g. stretch)
- `gitlab_docker_data_dir`: The directory in which you want GitLab to store
  its data on the host machine
- `gitlab_docker_http_public`: Whether or not you want to expose this instance
  publicly through the host
- `gitlab_docker_http_port`: The port on which you want to expose the
  HTTP port from the docker container (only used if `gitlab_docker_http_public`
  is true)
- `gitlab_docker_ssl_port`: The port on which you want to expose the SSH
  connection (always used)
- `gitlab_docker_hostname`: The hostname under which the GitLab instance will
  be reached, i.e. the external domain you use to reach GitLab

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
