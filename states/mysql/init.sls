install_mysql_server:
  pkg.installed:
    - pkgs:
       - mysql-server
       - mysql-common

mysql_service:
  service.running:
    - name: mysql
    - require:
       - install_mysql_server
