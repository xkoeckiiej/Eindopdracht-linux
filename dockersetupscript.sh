#Dockersetupscript.sh

salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'curl -fsSL https://get.docker.com -o get-docker.sh'
salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'sudo sh get-docker.sh'
salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'docker run ubuntu /bin/bash'
#salt 'itv2g-ubu-2.internal.cloudapp.net' docker.run_container ubuntu /bin/bash
salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'docker ps -a'
salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'docker run -d --restart unless-stopped redis'
salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'docker ps -a'