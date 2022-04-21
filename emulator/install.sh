#!/bin/bash

set -e

sudo apt-get install -yy ansible git

git clone --branch v3.1 https://github.com/containernet/containernet.git

#  We opened a pull request (#243) to make this edit available directly from upstream. See the PR for further details.
cp hack/node.py containernet/mininet/node.py

sudo ansible-playbook -i "localhost," -c local hack/install.yml

sudo pip3 install -r requirements.txt