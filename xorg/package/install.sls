# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import XORG with context %}

xorg-packages-present:
  pkg.installed:
    - pkgs: {{ XORG.packages }}
