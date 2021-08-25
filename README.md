# YiiDock 

Pre Configuration Docker for Development Yii + MySQL

## Getting started

Create project to folder src

```
composer create-project --prefer-dist yiisoft/yii2-app-basic src
```

Then, build image

```sh
docker-compose up --build
```

You can check service with execute: `docker-compose ps`

```
        Name                      Command               State                 Ports              
-------------------------------------------------------------------------------------------------
yiidock_app_1          docker-php-entrypoint php-fpm    Up      9000/tcp                         
yiidock_mysql_1        docker-entrypoint.sh mysqld      Up      0.0.0.0:3306->3306/tcp, 33060/tcp
yiidock_nginx_1        nginx -g daemon off;             Up      0.0.0.0:80->80/tcp               
yiidock_phpmyadmin_1   /docker-entrypoint.sh apac ...   Up      80/tcp 
```

Before acceess service, don't forget to execute `composer install` in app container. 

```
docker-compose exec app sh

composer install
```

## Available service:

- GET http://localhost

- GET http://localhost/phpmyadmin

## Usage

After edit code, You can reload `docker-compose restart app`

To check error You can execute `docker-compose logs -f app`

## Readmore



