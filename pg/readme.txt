1) запуск docker-compose
docker-compose -f docker-compose.yсml up -d
или
docker-compose up -d

2) остановить 
docker-compose down -v

3) подключить через bash
- получить список запущенных контейнеров
   docker ps
- скопировать нужный CONTAINER ID
  docker exec -it <CONTAINER ID> bash