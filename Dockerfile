# Imagen base con PHP y Apache
FROM php:8.2-apache

# Instalar extensión PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copiar los archivos del proyecto
COPY . /var/www/html/
WORKDIR /var/www/html

# Exponer el puerto que usa Render
EXPOSE 10000

# Comando para iniciar Apache en primer plano
CMD ["apache2-foreground"]

