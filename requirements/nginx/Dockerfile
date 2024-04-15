FROM debian:11.7

# Install NGINX
RUN apt-get update && apt-get install -y nginx

# Copy custom configuration files
COPY --chmod=755 config/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

#Start NGINX
CMD ["nginx", "-g", "daemon off;"]
