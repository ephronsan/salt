apache:
  pkg.installed:
    {% if grains['os'] == 'CentOS' %}
    - name: httpd
    {% elif grains['os'] == 'Ubuntu' %}
    - name: apache2
    {% endif %}
  service.running:
   {% if grains['os'] == 'CentOS' %}
    - name: httpd
    - watch:
      - pkg: httpd
      - file: /etc/httpd/conf/httpd.conf
    {% elif grains['os'] == 'Ubuntu' %}
    - name: apache2
    - watch:
      - pkg: apache2
    {% endif %}

/etc/httpd/conf/httpd.conf:
  file.managed:
    - source: salt://webserver/httpd.conf
