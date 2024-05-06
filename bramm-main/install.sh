docker compose up -d --build --force-recreate
docker exec -it bramm-mysql-1 mysql -u root --password=root -e "create database if not exists boisdelouest;"
docker exec -it bramm-laravel-1 ./artisan migrate --force
docker exec -it bramm-laravel-1 ./artisan db:seed
