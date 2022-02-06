FROM apache2.4-with-php7.4

ARG WP_VERSION=wordpress-5.9-zh_TW.tar.gz
RUN apt-get update -y
RUN apt-get install -y curl
WORKDIR /var/www/html
RUN curl -O https://tw.wordpress.org/${WP_VERSION}
RUN tar zxvf ${WP_VERSION}