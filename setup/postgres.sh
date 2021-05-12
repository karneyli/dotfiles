#!/bin/bash

PGDATA=/usr/local/var/postgres
if [ ! -e "$PGDATA/pg_hba.conf" ]; then
  initdb -D $PGDATA
else 
  echo "postgres cluster already exists at $PGDATA"
fi

createdb &> /dev/null
