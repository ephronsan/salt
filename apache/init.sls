apache:
  pkg.installed: 
    {% if grains['os'] == 'CentOS' %}
    - name: httpd
    - watch:
      - pkg: httpd
    {% elif grains['os'] == 'Ubuntu' %}
    - name: apache2
    {% endif %}
    - watch:
      - pkg: apache2
      - file: /etc/apache2/ports.conf
  
  service.running:
    {% if grains['os'] == 'CentOS'%}
    - name: httpd
    {% elif grains['os'] == 'Ubuntu' %}
    - name: apache2
    {% endif %}
    - user: apache
  user.present:
   - name: apache
   - uid: 99
   - gid: 99
   - home: /var/www/html
   - shell: /sbin/nologin
   - require:
     - group: apache
  group.present:
   - name: apache
   - gid: 99
   - require:
     {% if grains['os'] == "CentOS" %}
     - pkg: httpd
     {% elif grains['os'] == "Ubuntu" %}
     - pkg: apache2
     {% endif %}
     

/etc/apache2/ports.conf:
  file.managed:
  - source: salt://apache/ports.conf
  - mode: 644
  - user: root
  - group: root
