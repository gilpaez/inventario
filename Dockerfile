# Imagen base con PHP y Apache
FROM php:8.2-apache

# Copiar los archivos del proyecto
COPY . /var/www/html/

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto que usa Render
EXPOSE 10000

# Comando para iniciar el servidor
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]

