prometheus-node-exporter
========================

This is a role to install the prometheus node exporter.

Requirements
------------

None

Role Variables
--------------

- `prometheus_node_exporter_package_url`: The URL to the tar.gz package
  that should be downloaded and installed
- `prometheus_node_exporter_package_filename`: The filename of the
  installation package
- `prometheus_node_exporter_extracted_dir_name`: The name of the directory
  inside the zip archive
- `prometheus_node_exporter_user`: The user which should run the exporter
- `prometheus_node_exporter_group`: The group which should run the
  exporter

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: services
      roles:
         - prometheus-node-exporter

License
-------

MIT
