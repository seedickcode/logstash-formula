{%- from 'logstash/map.jinja' import logstash with context %}

logstash-pkg:
  pkg.{{logstash.pkgstate}}:
    - name: {{logstash.pkg}}
    {%- if logstash.use_upstream_repo %}
    - require:
      - pkgrepo: logstash-repo
    {%- endif %}

