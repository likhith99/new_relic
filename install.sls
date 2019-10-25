newrelic-infra-package:
{% if grains['os_family'] == 'RedHat' -%}
  pkg.installed:
    - name: newrelic-infra
{% else %}
  cmd.run:
    - name: rpmkeys --import newrelic-infra.gpg ; zypper install -y newrelic-infra
{% endif %}
