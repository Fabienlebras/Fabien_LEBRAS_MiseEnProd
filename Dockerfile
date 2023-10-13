FROM php:7.4-apache-bullseye

RUN <<EOF
apt-get update
apt-get install --yes \
git \
wget=1.21-1+deb11u1 \
ffmpeg=7:4.3.6-0+deb11u1 \
lsb-release \
zip
EOF

RUN <<EOF
docker-php-ext-install bcmath
docker-php-ext-install sockets
EOF

RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.6.2
EOF

WORKDIR /app

COPY . /app

RUN <<EOF
composer install
EOF
