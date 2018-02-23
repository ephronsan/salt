{% for DIR in ['/srv/aa/a','/srv/bb/b','/srv/cc/c'] %}
{{ DIR }}:
   file.directory:
    - user: root
    - group: root
    - mode: 755
{% endfor %}
