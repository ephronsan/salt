include:
  - apache

extend:
  apache2:
    service:
      - watch:
        - pkg: libapache2-mod-python

libapache2-mod-python:
  pkg.installed      
