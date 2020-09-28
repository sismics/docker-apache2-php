## About
Docker image for Apache2+PHP Web Server

## Usage

Make a new Dockerfile that extends from this image:
```
FROM sismics/apache2-php:latest
```

Add your documents to the web root:

```
RUN rm -fr /var/www/html/*
ADD www /var/www/html
```

Start a container:

```
docker run -d -h php --name php -p 80:80 --restart=always \
    sismics/apache2-php
```
