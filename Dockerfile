# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: moboustt <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/05 15:00:31 by moboustt          #+#    #+#              #
#    Updated: 2020/01/05 15:00:43 by moboustt         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update
EXPOSE 80 443
RUN apt-get install -y gnupg wget curl expect nginx ufw
RUN wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN curl -LO https://wordpress.org/latest.tar.gz
RUN apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip unzip -y
RUN tar -xvzf latest.tar.gz -C /var/www/html/
RUN rm -rf wordpress
RUN chown www-data: /var/www/html/wordpress/ -R
RUN tar xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages/ phpMyAdmin
RUN cp -rf phpMyAdmin ./var/www/html/
RUN cp -rf phpMyAdmin /usr/share/
RUN rm /var/www/html/wordpress/wp-config-sample.php
COPY srcs/sources.list /etc/apt/
COPY srcs/default etc/nginx/sites-available/
COPY srcs/wp-config.php /var/www/html/wordpress
RUN apt-get -y update
RUN apt-get -y upgrade 
COPY srcs/rc.sh ./
COPY srcs/localhost.crt /etc/ssl/certs/
COPY srcs/localhost.key /etc/ssl/private/
COPY srcs/wordpress.sql ./
CMD bash rc.sh

