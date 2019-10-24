# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - monitoring.config

{{ sls }}.service_running:
  service.running:
    - names:
      - newrelic-infra
    - watch:
      - monitoring.config.configuration
