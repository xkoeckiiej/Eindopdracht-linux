https://phoenixnap.com/kb/how-to-install-docker-on-ubuntu-18-04

#Dockersetupscript.sh

salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'sudo apt-get update'
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'sudo apt install docker.io -y'
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'sudo systemctl start docker'
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'sudo systemctl enable docker'
#salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'curl -fsSL https://get.docker.com -o get-docker.sh'
#salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'sudo sh get-docker.sh'
#salt 'itv2g-ubu-2.internal.cloudapp.net' cmd.run 'docker run ubuntu /bin/bash'
#salt 'itv2g-ubu-2.internal.cloudapp.net' docker.run_container ubuntu /bin/bash
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'docker ps -a'
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'docker run -d --restart unless-stopped redis'
salt 'itv2g-ubu-375112miniontestlaatstemanmanman.internal.cloudapp.net' cmd.run 'docker ps -a'