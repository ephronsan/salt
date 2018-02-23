install apache:
  pkg.installed:
    - name: {{ pillar['apache'] }}
  service.running:
    - name: {{ pillar['service'] }}
