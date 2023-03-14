#!/bin/bash
DUMP_DATA=/opt/postgres/dump/piv_data.backup

pg_restore --host "localhost" --port "5432" --username "postgres" --role "piv" --dbname "postgres" --format=d --data-only --disable-triggers --exit-on-error --jobs "12" --verbose $DUMP_DATA