sphinxsearch:
  pkg.installed: [] 
  service.running:
    - require: 
      - pkg: sphinxsearch
