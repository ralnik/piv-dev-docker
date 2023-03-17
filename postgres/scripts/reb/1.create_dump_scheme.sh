#!/bin/bash
DUMP_SCHEME=/opt/postgres/dump/reb_schema.backup

if [ -d "$DUMP_SCHEME" ]; then
   echo "reb_schema.backup already exist"
   rm -r -v $DUMP_SCHEME
else
    mkdir -v $DUMP_SCHEME
fi

pg_dump --file $DUMP_SCHEME --host "172.24.25.12" --port "5432" --username "reb" --verbose --role "reb" --verbose --role "reb" --format=d --schema-only --encoding "UTF8" --jobs "12" --schema "reb" "postgres"
