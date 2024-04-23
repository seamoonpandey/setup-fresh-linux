#!/bin/bash

set -e

sudo apt update
sudo apt install --assume-yes postgresql postgresql-contrib libpq-dev 

sudo -i -u postgres <<EOF
psql -c "CREATE ROLE usernamehere WITH LOGIN PASSWORD 'your_password_here';"
psql -c "ALTER ROLE usernamehere CREATEDB;"
EOF

sudo systemctl start postgresql

if sudo systemctl is-active --quiet postgresql; then
    echo "PostgreSQL installed and started successfully."
else
    echo "Failed to install PostgreSQL or start the service."
fi
