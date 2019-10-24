{%- set tplroot = tpldir.split('/')[0] %}
{% from "monitoring/map.jinja" import monitoring with context %}
{%- from "monitoring/macros.jinja" import files_switch with context %}


{{ sls }}.configuration:
  file.managed:
    - name: {{ monitoring.config }}
    - source: {{ files_switch(
                    salt['config.get'](
                        tpldir ~ ':tofs:files:monitoring-config',
                        ['newrelic-infra.yml']
                    )
              ) }}
      - salt://files/{{ tplroot }}/newrelic-infra.yml
    - mode: 644
    - user: root
    - group: root
    - makedirs: True
    - template: jinja
    - context:
        monitoring: {{ monitoring | json }}

