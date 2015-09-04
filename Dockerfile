FROM daocloud.io/php:5.6-cli

COPY . /app
WORKDIR /app
CMD [ "php", "./hello.php" ]
EXPOSE 80
CMD php-start
