#!/bin/bash

sudo apt-get -y install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev lua5.1 lua5.1-dev git curl cmake \
build-essential module-assistant tree linux-headers-$(uname -r) \
tmux autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev \
libffi-dev libgdbm3 libgdbm-dev exuberant-ctags sqlite3 libsqlite3-dev \
postgresql postgresql-contrib
