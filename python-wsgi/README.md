python-wsgi
===========

A simple role to serve python projects with WSGI to a webserver.

Requirements
------------

Requires a python project that can be checked out from a repository.

Role Variables
--------------

- `python_wsgi_name`: A name for this project, used for filenames
- `python_wsgi_dest_path`: The path on the server to which all files should be
  stored
- `python_wsgi_repo_url`: The URL of the project that should be served
- `python_wsgi_app`: The name/path to the application that should be served,
  e.g. usually `mymodule.app:app`
- `python_wsgi_port`: The port on which the app should be served
- `python_wsgi_socket`: If you want to serve your website through a socket
  file, you can also use this setting instead of `python_wsgi_port`, the value
  must include the `unix:` prefix, e.g. `unix:/run/gunicorn/project.lock`
- `python_wsgi_user`: The user under which this task should run
- `python_wsgi_group`: The group under which this task should run
- `python_wsgi_env_variables`: Define all environment variables that should
  be passed to your application in this string in the form
  `ENVNAME=value,OTHERENVNAME=other-value`

Example Playbook
----------------

Generally, you will use this project together with another role for a web
server. For example, nginx is one possibility.

    - hosts: servers
      roles:
        - python-wsgi
        - ssl
        - nginx-passthrough

License
-------

MIT
