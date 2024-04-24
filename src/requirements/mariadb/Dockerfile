# Usa la imagen oficial de Debian como imagen base
FROM debian:11.7

# Actualiza los repositorios del sistema e instala MARIADB
RUN apt-get update && apt-get install -y mariadb-server

# Copia tu archivo de configuración personalizado de NGINX al contenedor
COPY config/mariadb.conf /etc/mysql/my.conf

# Expon el puerto 80 para que el servidor NGINX sea accesible desde el exterior
EXPOSE 3306

# Inicia NGINX cuando se inicie el contenedor
CMD ["mysqld"]
