newrelic-infra-package:
  {% if grains['os_family'] == 'RedHat' -%}
  pkg.installed:
    - name: newrelic-infra

  {% if grains['os_family'] == 'Suse' -%}

