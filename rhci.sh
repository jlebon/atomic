#!/bin/bash
set -xeuo pipefail

dnf install -y \
  make \
  git \
  python \
  libffi-devel \
  python-devel \
  libselinux-python \
  ostree-devel \
  python-gobject-base \
  pylint \
  golang-github-cpuguy83-go-md2man \
  redhat-rpm-config \
  gcc \
  PyYAML \
  python3-PyYAML \
  python-dbus \
  python-docker-py \
  rpm-python \
  python-slip-dbus \
  gcc-go \
  python3-pylint \
  python3-dbus \
  python3-slip-dbus \
  python3-docker-py \
  python3-gobject-base \
  python3-dateutil \
  python2-coverage \
  attr

pip install -r requirements.txt
make
make test-python3-pylint
make install DESTDIR=/host
