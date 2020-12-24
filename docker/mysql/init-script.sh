#!/bin/bash

# Add .mysql.root.password file.
if [ ! -f /var/lib/mysql/.mysql.root.password ]; then
  touch /var/lib/mysql/.mysql.root.password && echo "${MYSQL_ROOT_PASSWORD}" > /var/lib/mysql/.mysql.root.password
fi

exec "$@"