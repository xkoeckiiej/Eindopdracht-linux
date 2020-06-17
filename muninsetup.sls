muninsetup.sls
copy munin config file:
  file.managed:
    - name: /etc/munin/munin-node.conf
    - source: salt://muninfiles/munin-node.conf