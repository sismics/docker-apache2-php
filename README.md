[![GitHub release](https://img.shields.io/github/release/sismics/docker-apache2-php.svg?style=flat-square)](https://github.com/sismics/docker-backupninja/releases/latest)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

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
