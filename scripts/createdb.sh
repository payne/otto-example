#!/usr/bin/env bash
set -e

# Install postgres client
sudo apt-get -yqq update &>/dev/null
sudo apt-get -yqq install postgresql-client-common postgresql-client &>/dev/null

# Create the database user
psql --user postgres --host postgresql.service.consul <<"EOH"
CREATE DATABASE demo;
EOH
