git:
  pkg.installed

/opt/wetty:
  file.directory:
    - makedirs: True
    - mode: 755

https://github.com/krishnasrinivas/wetty:
  git.latest:
    - branch: master
    - force_reset: True
    - require:
      - pkg: git
      - file: /opt/wetty

npm:
  pkg.installed

/opt/wetty:
  npm.bootstrap:
    - user: root
    - require:
      - pkg: npm