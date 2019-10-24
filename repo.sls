newrelic-infra-repo:
  pkgrepo.managed:
    - humanname: newrelic-infra
    - name: newrelic-infra
    - baseurl: https://download.newrelic.com/infrastructure_agent/linux/yum/el/$releasever/$basearch
    - gpgkey: https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg
    - gpgcheck: 1
    - repo_gpgcheck: 1
    - require_in:
      - pkg: newrelic-infra-package
