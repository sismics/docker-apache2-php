#
# Dockerfile for Apache Web Server + PHP
#
FROM sismics/apache2:2.4.41-4
MAINTAINER Jean-Marc Tremeaux <jm.tremeaux@sismics.com>
MAINTAINER Benjamin Gamard <b.gamard@sismics.com>

# Install PHP, Apache 2 module and additional programs
RUN apt-get update && \
    apt-get install -y libapache2-mod-php7.4 php7.4-mysql php7.4-gd php7.4-intl php7.4-curl php-pear php-apcu && \
    rm -rf /var/lib/apt/lists/*

