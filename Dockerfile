#
# Dockerfile for Apache Web Server + PHP
#

FROM sismics/apache2
MAINTAINER Jean-Marc Tremeaux <jm.tremeaux@sismics.com>
MAINTAINER Benjamin Gamard <b.gamard@sismics.com>

# Install PHP, Apache 2 module and additional programs
RUN apt-get update && apt-get install -y libapache2-mod-php5 php5-mysql php5-gd php-pear php-apc php5-intl php5-curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

