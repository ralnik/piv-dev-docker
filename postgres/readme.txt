1) запуск docker-compose
	docker-compose -f docker-compose.yml up -d
или
	docker-compose up -d
Ключ -d указывает, что docker-compose должен быть запущен в в фоновом режиме (вернет управление после его запуска).

2) остановить 
	docker-compose stop
или
	docker-compose down -v
Stop and remove containers, networks. Ключ -v указывает, что так же нужно удалить volume

3) подключить через bash
- получить список запущенных контейнеров
   docker ps
- скопировать нужный CONTAINER ID
  docker exec -it <CONTAINER ID> bash

4) cd /opt/postgres/sctipts
	./mkdirs.sh
	или
	bash -x ./mkdirs.sh

	-Если возникла ошибка /bin/bash^M: bad interpreter: No such file or directory (обычно если докер установлен на windows)
		sed -i -e 's/\r$//' mkdirs.sh
	и пробуем еще раз 
		./mkdirs.sh		

5) Дать полный доступ ко всей директории /opt/postgres
   chmod ugo+rwx -vR /opt/postgres

6) Дать доступ пользователю postgres ко всей директории /opt/postgres
   chown postgres:postgres -vR /opt/postgres

7) Подключиться к postgresql:
   psql -U postgres

8) Выполнить запросы:

   postgres=# \i /opt/postgres/scripts/tablespace.sql
   postgres=# \i /opt/postgres/scripts/role.sql

9) Для восстановления через bash прогнать скрипты в указанном порядке:
   /opt/postgres/scripts/piv/1.create_dump_scheme.sh
   /opt/postgres/scripts/piv/2.create_dump_data.sh
   /opt/postgres/scripts/piv/3.restore_scheme.sh
   /opt/postgres/scripts/piv/4.restore_data.sh


9) После восстановления дампа, прогнать скрипты:
   postgres=# \i /opt/postgres/scripts/run_afrer_restore.sql