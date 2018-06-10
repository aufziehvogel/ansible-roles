gitlab-docker
=============

This is a role to install the docker container of GitLab.

Requirements
------------

Requires the role `docker` to be executed before this role.

Role Variables
--------------

- `gitlab_docker_data_dir`: The directory in which you want GitLab to store
  its data on the host machine
- `gitlab_docker_http_public`: Whether or not you want to expose this instance
  publicly through the host
- `gitlab_docker_http_port`: The port on which you want to expose the
  HTTP port from the docker container (only used if `gitlab_docker_http_public`
  is true)
- `gitlab_docker_ssh_port`: The port on which you want to expose the SSH
  connection (always used)
- `gitlab_docker_hostname`: The hostname under which the GitLab instance will
  be reached, i.e. the external domain you use to reach GitLab
- `gitlab_docker_external_ssl`: Set to `true` if you use SSL on an external
  reverse proxy

### Configuration of the Gitlab setup

- `gitlab_docker_lfs_enabled`: Whether to enable LFS storage
- `gitlab_docker_lfs_storage_path`: The path to which LFS items should be
  stored (path on the host, not in the gitlab container)

Example Playbook
----------------

This role is most useful together with other additional roles, e.g. for
HTTP termination.

    - hosts: database
      vars_files:
         - "vars/ssl_gitlab.yml"
      roles:
         - docker
         - gitlab-docker
         - ssl
         - nginx
         - gitlab-docker-nginx

License
-------

MIT
