include:
  - wetty.install

wetty_service:
  service.running:
    - name: wetty
    - enable: True
    - watch:
      - file: /etc/init/wetty.conf
