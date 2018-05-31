gitlab-runner-docker
====================

This is a role to install the GitLab Runner as a docker container.

Requirements
------------

The system must be Debian.

Role Variables
--------------

- `gitlab_runner_docker_debian_version`: The version of Debian you are running
  (e.g. stretch)
- `gitlab_runner_docker_data_dir`: The directory in which you want the GitLab
  runner to store its data on the host machine
- `gitlab_runner_docker_url`: The URL on which your gitlab instance can be
  reached for registration
- `gitlab_runner_docker_registration_token`: The registration token of your
  GitLab instance to register new runners
- `gitlab_runner_docker_description`: The description you want to use for your
  runner
- `gitlab_runner_docker_tags`: The tags you want to associate with your
  runner (comma separated)

Example Playbook
----------------

    - hosts: gitlab
      vars_files:
         - "vars/gitlab_runner.yml"
      roles:
         - gitlab-runner-docker

License
-------

MIT
