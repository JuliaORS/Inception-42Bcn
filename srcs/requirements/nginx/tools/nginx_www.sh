#! /bin/bash

if [ ! -f /etc/ssl/julolle-.42.fr.crt ]; 
then
	openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/ssl/julolle-.42.fr.crt -keyout /etc/ssl/julolle-.42.fr.key -subj "/C=ES/ST=Barcelona/L=Barcelona/O=42 Barcelona/CN=julolle-.42.fr";
fi

exec "$@"
