install emac:
  pkg.installed:
    - name: {{ pillar['editor'] }}
