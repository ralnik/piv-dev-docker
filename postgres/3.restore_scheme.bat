set ROOT=%CD%
set PG_DIR="C:\Program Files\PostgreSQL\13\bin"
set DUMP=%ROOT%\dump

%PG_DIR%\psql -U postgres -c "DROP SCHEMA piv CASCADE"

%PG_DIR%\pg_restore.exe --host "localhost" --port "5432" --username "postgres" --role "piv" --dbname "postgres" --format=d --schema-only --exit-on-error --jobs "12" --verbose %DUMP%\piv_schema.backup