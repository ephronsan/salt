{% for users in ['harry','larry'] %}
{{ users }}:
   user:
    - present
   group:
    - present
{% endfor %}
