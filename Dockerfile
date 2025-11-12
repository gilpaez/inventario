# Imagen base con PHP y Apache
FROM php:8.2-apache

# Copiar los archivos del proyecto
COPY . /var/www/html/

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto que usa Render
EXPOSE 10000

# Configurar Apache para usar el puerto de Render
ENV PORT 10000

# Usar Apache en primer plano, apuntando al puerto de Render
CMD ["apache2-foreground"]

