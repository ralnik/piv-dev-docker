set ROOT=%CD%
set PG_DIR="C:\Program Files\PostgreSQL\13\bin"
set DUMP=%ROOT%\dump

%PG_DIR%\pg_dump.exe --file %DUMP%\piv_data.backup --host "172.24.25.12" --port "5432" --username "piv" --verbose --role "piv" -T "piv.test1" -T "piv.vr_date" -T "piv.tst_test1" -T "piv.skl_ord_sources" -T "adm_audit_events" -T "adm_log_ws_source" -T "adm_audit_user_logons" -T "adm_exec_history" -T "wls_deploy_files" -T "skl_original_documents" -T "adm_log_ws" -T "wls_deploy_files" -T "skl_storage_source" --format=d --data-only --encoding "UTF8" --jobs "12" --schema "piv" "postgres"