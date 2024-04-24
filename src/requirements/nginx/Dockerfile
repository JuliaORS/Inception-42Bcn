FROM debian:11.7

# Actualiza los repositorios del sistema e instala NGINX
RUN apt-get update && apt-get install -y nginx

# Copia tu archivo de configuración personalizado de NGINX al contenedor
COPY nginx.conf /etc/nginx/nginx.conf

# Cambia los permisos del archivo de configuración si es necesario
RUN chmod 755 /etc/nginx/nginx.conf

# Expon el puerto 80 para que el servidor NGINX sea accesible desde el exterior
#EXPOSE 80

# Inicia NGINX cuando se inicie el contenedor
CMD ["nginx", "-g", "daemon off;"]
