set ROOT=%CD%
set PG_DIR="C:\Program Files\PostgreSQL\13\bin"
set DUMP=%ROOT%\..\dump

cd ..
echo delete dump folder
rmdir /s /q dump
if not exist dump mkdir dump

%PG_DIR%\pg_dump.exe --file %DUMP%\reb_schema.backup --host "172.24.25.12" --port "5432" --username "reb" --verbose --role "reb" --format=d --schema-only --encoding "UTF8" --jobs "12" --schema "reb" "postgres"