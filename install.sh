#!/bin/bash

# Install Postgres Client
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-client-15
sudo ln -s /usr/lib/postgresql/15/bin/pg_dump /usr/bin/pg_dump --force

pg_dump --version

# Install snaplet
curl -sL https://app.snaplet.dev/get-cli/ | bash
