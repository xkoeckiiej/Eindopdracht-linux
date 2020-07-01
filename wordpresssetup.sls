#wordpresssetup.sls
copy wordpress config file:
  file.managed:
    - name: /etc/apache2/sites-available/wordpress.conf
    - source: salt://wordpressfiles/wordpress.conf
copy wordpress php file:
  file.managed:
    - name: /etc/wordpress/config-10.0.7.50.php
    - source: salt://wordpressfiles/config-10.0.7.50.php

/etc/wordpress/:
  file.recurse:
    - source: salt://wordpressfiles
    - include_empty: True