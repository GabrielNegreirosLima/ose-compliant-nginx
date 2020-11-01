FROM nginx:latest

# Install deps
RUN apt update && \
	apt install -y openssl && \
	rm -Rf /var/lib/apt/lists/* && rm -Rf /etc/apt/sources.list

COPY default.conf /etc/nginx/conf.d/default.conf
COPY localhost.conf /root/localhost.conf

WORKDIR /root
RUN openssl req -x509 -nodes -days 365 -subj "/C=BR/ST=MG/O=Company, Inc./CN=mynginx.local" -addext "subjectAltName=DNS:mynginx.local" -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt;

# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt -config /root/localhost.conf
#RUN cp localhost.crt /etc/ssl/certs/localhost.crt  && rm localhost.crt
#RUN cp localhost.key /etc/ssl/private/localhost.key && rm localhost.key

