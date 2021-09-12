#!/usr/bin/env bash
#
# Install Hypha Infustructure on one or more servers
#
# Usage: install-bbb.sh [hostname]
#   If no [hostname] is provided, install on all
  
if [[ "${1}" != "" ]]; then
  ansible-galaxy install -r requirements.yml --force && \
    ansible-playbook install.yml -i hosts.yml \
    --limit "${1}" -vv
else
  ansible-galaxy install -r requirements.yml --force && \
    ansible-playbook install.yml -i hosts.yml -vv
fi
