set ROOT=%CD%
set PG_DIR="C:\Program Files\PostgreSQL\13\bin"
set DUMP=%ROOT%\..\dump

%PG_DIR%\pg_restore.exe --host "localhost" --port "5432" --username "postgres" --role "piv" --dbname "postgres" --format=d --data-only --disable-triggers --exit-on-error --jobs "12" --verbose %DUMP%\piv_data.backup