vim:
  pkg.installed

/etc/vim/vimrc:
  file.managed:
    - source: salt://edit/vimrc
    - mode:  600
    - user:  root
    - group: root
