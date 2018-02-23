install_network_tools:
  pkg.installed:
    - pkgs:
      - rsync
      - netstat
      - lftp
      - curl
