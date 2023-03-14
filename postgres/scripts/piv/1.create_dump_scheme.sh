#!/bin/bash
DUMP_SCHEME=/opt/postgres/dump/piv_schema.backup

if [ -d "$DUMP_SCHEME" ]; then
   echo "piv_schema.backup already exist"
else
    mkdir -v $DUMP_SCHEME
fi

pg_dump --file $DUMP_SCHEME --host "172.24.25.12" --port "5432" --username "piv" --verbose --role "piv" -T "piv.test1" -T "piv.vr_date" -T "piv.tst_test1" --format=d --schema-only --encoding "UTF8" --jobs "12" --schema "piv" "postgres"
