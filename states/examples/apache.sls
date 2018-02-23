web-server:
  pkg.installed:
    - name: apache2
  service.running:
    - name: apache2
    - require:
       - pkg: apache2

/var/www/index.html:
  file:
     - managed
     - source: salt://legacyapp/a.html
     - require:
       - pkg: apache2
