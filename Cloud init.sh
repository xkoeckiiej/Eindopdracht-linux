#cloud-config
package_update: true

salt_minion:
  pkg_name: 'salt-minion'
  service_name: 'salt-minionpresentatietest2'
  config_dir: '/etc/salt'
  conf:
    master: 10.0.7.77
		

# https://salt-zh.readthedocs.io/en/latest/topics/tutorials/bootstrap_ec2.html

#!/bin/bash

#Install saltstack
# add-apt-repository ppa:saltstack/salt -y
# apt-get update -y
# apt-get install salt-minion -y
# apt-get upgrade -y

#Set salt master location and start minion
# sed -i 's/#master: salt/master: 10.0.7.77/' /etc/salt/minion
# salt-minion -d



#FAILED
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqJLzOsVqS4UVHK6emfIxWpenH72DhptAS2UNI8ebajdvES+g+sle5nUd8wQH7G06KJwaPyJ66JmzB3nVdQDJLbw+a0EAs1oQoaKnjoM/WtGA/qERB+Sik9sD4GOHczumuay7UUjYfAHhcwcxzBsNnzWq8wThRPrgprur3s+i7LpxLdJwwAR8GTdyF5YtwddHb/FEs5Df5TR6UqyVCY2cII0NfX2FIT75kb5WTjMuxjD9vntXc0WVRTplIk9Zhf0BYl7BcQVce8iT6+VXuCKN2IMcFJ40MZdt9ScZw+iNdsnn4+op0wLODqn5AGPK9WpJS20bdosfEY5CzGaYj4ZPz youri@Asus-Laptop



# salt_minion:
    # pkg_name: 'salt-minion'
    # service_name: 'salt-minion7'
    # config_dir: '/etc/salt'
    # conf:
        # master: 10.0.7.77
    # grains:
        # role:
            # - web
    # public_key: |
        # ------BEGIN PUBLIC KEY-------
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqJLzOsVqS4UVHK6emfIxWpenH72DhptAS2UNI8ebajdvES+g+sle5nUd8wQH7G06KJwaPyJ66JmzB3nVdQDJLbw+a0EAs1oQoaKnjoM/WtGA/qERB+Sik9sD4GOHczumuay7UUjYfAHhcwcxzBsNnzWq8wThRPrgprur3s+i7LpxLdJwwAR8GTdyF5YtwddHb/FEs5Df5TR6UqyVCY2cII0NfX2FIT75kb5WTjMuxjD9vntXc0WVRTplIk9Zhf0BYl7BcQVce8iT6+VXuCKN2IMcFJ40MZdt9ScZw+iNdsnn4+op0wLODqn5AGPK9WpJS20bdosfEY5CzGaYj4ZPz youri@Asus-Laptop
        # ------END PUBLIC KEY-------
    # private_key: |
        # ------BEGIN PRIVATE KEY------
# MIIEpAIBAAKCAQEAqiS8zrFakuFFRyunpnyMVqXpx+9g4abQEtlDSPHm2o3bxEvo
# PrJXuZ1HfMEB+xtOiicGj8ieuiZswd51XUAyS28PmtBALNaEKGip46DP1rRgP6hE
# QfkopPbA+Bjh3M7prmsu1FI2HwB4XMHMcwbDZ81qvME4UT64Ka7q97Pouy6cS3Sc
# MAEfBk3cheWLcHXR2/xRLOQ3+U0elKslQmNnCCNDX19hSE++ZG+Vk4zLsYw/b57V
# 3NFlUU6ZSJPWYX9AWJewXEFXHvIk+vlV7gijdiDHBSeNDGXbfUnGcPojXbJ5+PqK
# dMCzg6p+QBjyvVqSUttG3aLHxGOQsxmmI+GT8wIDAQABAoIBAQCbysHbnQfrYDxY
# O7/qMTcrjAYxnZ4fYOg7qhbzLxUMYEKwTjUdW536BurTb8OJk2pqE+vtMm0s1ExX
# hIQA2+xxqAMo5bEtnUsr2RJerPxCg61x/Hhr1GKEErGFOvttfUT6AYjCv3hxELQl
# cwrq9HFuleg7Z81Sj1SATns2TtU2tqrsEdGz/0L73l8cJVcH9EnXv4454auXndO2
# ocE23W25OrBirPfw+aM6RSr89mAnkEOXHvqZpYpvm4OSGKsL3kBNCg/sC9XfzLHB
# oHORP7nbQ7yvX6uOr8Aq1WRZTbtqFvC/Y4wZFl/r0UegCTYWLeBTQlxZUMhWyGYR
# 7XuwbH1ZAoGBAOF41AT7Hvsp9B2+Ax/jLE6lMeC2MFfWcD1hobMizNrtp/B0iqat
# fLtPB4SKP1jclz/W0Q8z5tSR6LgqQy3nC6kBJn1XTx1GWDl0J6kFOGsMso2f9ZxV
# 4b48c2HPHRDnaJpAFfFBwW9Ar0oqtY+UHKgc+UZtUcEdkwdqKHfItwAlAoGBAMEu
# JcFx/o1JWJXAkPjuWLALqNguhZvDas4CQdSdYcYmAbw4/dnNbxaJfweLOzpVNp0Q
# FXEzOpH0TRn9kFLdi7kuxuDa7UcX+qvP6YnrtoenQFSbmSPZKdZVFOcEIqo+aR+N
# qxce/vjlrrHT3fVTiRAktqF1AALnVLGzKwewcpw3AoGACIreZY3qH5P4VsQjNCsU
# O6qQmDXu4PUT7Y9sY/AWmNjWOwr/Uc9S4XneDAx81+4LoPSPmSbbQQSCL7ASOYP+
# chnEDo2nRrGqmAqpkgLLn2qsvSbpVFIAqod5y6PgMwrBcM6qxig6nu9xdLrnhBgV
# ed0XKK7toQZw0qAYBmnJXS0CgYEAm3QJSevzzbpSIN//SXJzx+b6Dk0Rk1DkJ7dF
# RlUHky6OgurRzG02kco/gNCX7s8XzbhdqORyo3UWfm2/sA88Gt77h4JlIqq3O39q
# DWSzU+JRMESuLVzZ//IjieuYAauLaKrWHRsCT0R1GgDGQl7gky8YEEFYqv2A+CaX
# 3+4rrG0CgYBrZaXxHfSTo8bHfY+mPPN5hsCyvBj4oki8djT3ZFkkdUPPb2kNroT7
# zyVhBV7YRZ4X/dT2wSApCOzOtPBcvSTYJ/ITP8YchWrKMKlmElvWga6pPJj5TVkT
# lWH6Ot52bkPyqYnH4mTcCBW9HPFM5g/DREo7FK688qszG0eJlinKRg==
        # ------END PRIVATE KEY-------