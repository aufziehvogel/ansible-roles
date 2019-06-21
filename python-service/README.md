python-service
==============

A role to install python services.

Requirements
------------

Requires a python project that can be checked out from a repository.

Role Variables
--------------

- `python_service_name`: A name for this project, used for filenames
- `python_service_dest_path`: The path on the server to which all files
  should be stored
- `python_service_bin_name`: The name of the binary that should be executed
  as it is installed by `setup.py` (only the binary name without path)
- `python_service_repo_url`: The URL of the project that should be installed
- `python_service_env_variables`: Define all environment variables that should
  be passed to your application as a list with each value in
  the form `ENVNAME=value`
- `python_service_user`: The user to run the service
- `python_service_group`: The group to run the service

Example Playbook
----------------

    - hosts: servers
      roles:
        - python-service

License
-------

MIT
