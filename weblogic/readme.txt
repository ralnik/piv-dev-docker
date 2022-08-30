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

или

  docker exec -it weblogic10.3  /bin/bash

4) Перезагрузка weblogic
docker-compose restart weblogic10.3

5) Консоль weblogic
http://localhost:7001/console

login: weblogic
password: Oracle@123