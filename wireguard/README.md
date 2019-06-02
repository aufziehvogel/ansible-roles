wireguard
=========

This is a role to setup wireguard on a list of hosts and connect them all
to one common private subnet.

Requirements
------------

Wireguard must already be installed / enabled in the kernel (once this is
available). This role does not install wireguard.

You also must open the required ports on each host. This role does not
setup `iptables` for you.

Role Variables
--------------

- `wireguard_subnet`: The subnet to be used for wireguard, default `/24`. Must
  be defined including the slash.
- `wireguard_hosts`: A dictionary of hosts, cf. the example below. The list
  of hosts must be exactly the same as you use in the `hosts` file for this
  role.

Example Configuration
---------------------

    - wireguard_subnet: "/24"
    - wireguard_hosts:
      server1:
        public_ip: (your hosts normal public IP)
        private_ip: 10.0.0.1
        port: 51820
      server2:
        public_ip: (your hosts normal public IP)
        private_ip: 10.0.0.2
        port: 51821

This configuration would work together with a `hosts` file with the following
hosts:

    [wireguard]
    server1
    server2

Example Playbook
----------------

    - hosts: wireguard
      vars_files:
         - "vars/wireguard.yml"
      roles:
         - wireguard

License
-------

MIT
