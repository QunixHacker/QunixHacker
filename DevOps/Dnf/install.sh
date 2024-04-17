#! /usr/bin/env bash

dnf --version

dnf install dnf-plugins-core
# dnf copr
# dnf config-manager

dnf copr list
# dnf copr enable @caddy/caddy
# dnf install caddy