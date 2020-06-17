#filebeatsetupscript.sh
#filebeat:
#https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elastic-stack-on-ubuntu-18-04

salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo apt update'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo apt install filebeat'

sudo salt -C '* not itv2g-ubu-30.internal.cloudapp.net' state.apply filebeatsetup
#copy filebeat config file:
#  file.managed:
#    - name: /etc/filebeat/filebeat.yml
#    - source: salt://filebeatfiles/filebeat.yml

salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo filebeat modules enable system'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo filebeat modules list'
#Output
#Enabled: system

salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo filebeat setup --index-management -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["10.0.7.78:9200"]''
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo filebeat setup -e -E output.logstash.enabled=false -E output.elasticsearch.hosts=['10.0.7.78:9200'] -E setup.kibana.host=10.0.7.78:5601
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo systemctl start filebeat'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'sudo systemctl enable filebeat'
salt -C '* not itv2g-ubu-30.internal.cloudapp.net' cmd.run 'curl -XGET 'http://10.0.7.78:9200/filebeat-*/_search?pretty''