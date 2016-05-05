#!/usr/bin/env bash

find .otto -name Vagrantfile | xargs sed -i "" -e's/hashicorp\/precise64/cbednarski\/ubuntu-1404/g'
