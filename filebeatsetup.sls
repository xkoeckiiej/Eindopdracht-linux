#filebeatsetup.sls
copy filebeat config file:
  file.managed:
    - name: /etc/filebeat/filebeat.yml
    - source: salt://filebeatfiles/filebeat.yml