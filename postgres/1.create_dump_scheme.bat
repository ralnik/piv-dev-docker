set ROOT=%CD%
set PG_DIR="C:\Program Files\PostgreSQL\13\bin"
set DUMP=%ROOT%\dump

echo delete dump folder
rmdir /s /q dump
if not exist dump mkdir dump

%PG_DIR%\pg_dump.exe --file %DUMP%\piv_schema.backup --host "172.24.25.12" --port "5432" --username "piv" --verbose --role "piv" -T "piv.test1" -T "piv.vr_date" -T "piv.tst_test1" --format=d --schema-only --encoding "UTF8" --jobs "12" --schema "piv" "postgres"