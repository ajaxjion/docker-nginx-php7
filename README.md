# docker nginx php7


nginx1.6  php7-fpm

EXPOSS 80

## usage

```
docker run -d  -v /var/www:/var/www  -p 80:80 adrian812/nginx-php7
```

docker composer

```
version: '3'
services:
  spider:
    restart: always
    logging:
      driver: "json-file"
      options:
        max-size: "20m"
        max-file: "10"
    network_mode: "bridge"
    container_name: php
    image: adrian812/nginx-php7
    environment:
      - TZ=Asia/Shanghai
    volumes:
      - /data/www/fn:/var/www/fn
    ports:
      - "80:80"

```

## html

/var/www

## nginx

/etc/nginx/sites-enabled/

### nginx site example

```
 server {
 	listen 80;

 	root /var/www/game.me/public/admin;

 	index index.html index.htm index.php;

 	server_name a.game.me;

 	location / {
 		try_files $uri $uri/ /index.php?$query_string;
 	}

 	location ~ \.php$ {
 		include snippets/fastcgi-php.conf;
 		fastcgi_pass   127.0.0.1:9000;
 	}
 }
```
