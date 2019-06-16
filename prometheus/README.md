Prometheus
==========

This is a role to install Prometheus. Prometheus will be installed
from the official binary release, not from the OS repository.

Requirements
------------

None

Role Variables
--------------

- `prometheus_package_url`: The URL to the tar.gz package that should be
  downloaded and installed
- `prometheus_extracted_dir_name`: The name of the directory inside the zip
  archive
- `prometheus_user`: The user which should run prometheus
- `prometheus_group`: The group which should run elasticsearch
- `prometheus_scrape_configs`: `scrape_configs` definition for prometheus

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
         - prometheus

License
-------

MIT
