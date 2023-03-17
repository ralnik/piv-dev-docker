#!/bin/bash
DUMP_SCHEME=/opt/postgres/dump/reb_schema.backup

psql -U postgres -c "DROP SCHEMA reb CASCADE"

pg_restore --host "localhost" --port "5432" --username "postgres" --role "re" --dbname "postgres" --format=d --schema-only --exit-on-error --jobs "12" --verbose $DUMP_SCHEME