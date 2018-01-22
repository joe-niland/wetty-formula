wetty:
  npm.installed

/etc/init/wetty.conf:
  file.copy:
    - source: /usr/local/lib/node_modules/wetty/bin/wetty.conf
    - user: root
    - group: root
    - mode: 750
    - require:
      - npm: wetty