FROM nginx:latest

# Install deps
RUN apt update && \
	apt install -y openssl && \
	rm -Rf /var/lib/apt/lists/* && rm -Rf /etc/apt/sources.list

WORKDIR /root
RUN openssl req -x509 -nodes -days 365 -subj "/C=BR/ST=MG/O=Company, Inc./CN=mynginx.local" -addext "subjectAltName=DNS:mynginx.local" -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt;
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

COPY default.conf /etc/nginx/conf.d/default.conf
COPY ssl-params.conf /etc/nginx/conf.d/ssl-params.conf

