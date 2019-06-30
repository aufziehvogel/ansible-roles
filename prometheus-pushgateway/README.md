prometheus-pushgateway
======================

This is a role to install the prometheus pushgateway.

Requirements
------------

None

Role Variables
--------------

- `prometheus_pushgateway_package_url`: The URL to the tar.gz package
  that should be downloaded and installed
- `prometheus_pushgateway_package_filename`: The filename of the
  installation package
- `prometheus_pushgateway_extracted_dir_name`: The name of the directory
  inside the zip archive
- `prometheus_pushgateway_user`: The user which should run the exporter
- `prometheus_pushgateway_group`: The group which should run the
  exporter
- `prometheus_pushgateway_bind`: The bind address for this service

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
         - prometheus-pushgateway

License
-------

MIT
