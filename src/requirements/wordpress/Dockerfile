# Usa la imagen oficial de Debian como base
FROM debian:11.7

# Instala los paquetes necesarios para WordPress
RUN apt-get update && \
    apt-get install -y php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/www/html

# Descarga WordPress desde el sitio oficial e instálalo
RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz -C /var/www/html --strip-components=1 && \
    rm wordpress.tar.gz

# Copia el archivo de configuración de WordPress personalizado
COPY wp-config.php /var/www/html/wp-config.php

# CMD para usar PHP-FPM junto con WordPress
CMD ["php-fpm", "-F"]
