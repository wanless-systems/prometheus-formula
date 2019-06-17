# -*- coding: utf-8 -*-
# vim: ft=sls
{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import prometheus with context %}


include:
  - .args
  - .file
  - .environ
    {%- if prometheus.pkg.use_upstream_archive and kernel|lower == 'linux'  %}
  - .systemd
    {%- endif %}


