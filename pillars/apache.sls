{% if grains ['os_family'] == "RedHat" %}
apache: httpd
service: httpd
{% elif grains ['os_family'] == "Debian" %}
apache: apache2
service: apache2
{% endif %}
