#!/bin/bash
DUMP_SCHEME=/opt/postgres/dump/piv_schema.backup

psql -U postgres -c "DROP SCHEMA piv CASCADE"

pg_restore --host "localhost" --port "5432" --username "postgres" --role "piv" --dbname "postgres" --format=d --schema-only --exit-on-error --jobs "12" --verbose $DUMP_SCHEME