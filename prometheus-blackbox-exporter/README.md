prometheus-blackbox-exporter
============================

This is a role to install the prometheus blackbox exporter for
probing hosts.

Requirements
------------

None

Role Variables
--------------

- `prometheus_blackbox_exporter_package_url`: The URL to the tar.gz package
  that should be downloaded and installed
- `prometheus_blackbox_exporter_package_filename`: The filename of the
  installation package
- `prometheus_blackbox_exporter_extracted_dir_name`: The name of the directory
  inside the zip archive
- `prometheus_blackbox_exporter_user`: The user which should run the exporter
- `prometheus_blackbox_exporter_group`: The group which should run the
  exporter
- `prometheus_blackbox_exporter_bind`: The bind address for this service
- `prometheus_blackbox_user_agent`: Set a custom user-agent, can be useful
  if some of your customers' websites block your user-agent

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
         - prometheus-blackbox-exporter

License
-------

MIT
