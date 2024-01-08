FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y nginx openssl

RUN mkdir /etc/nginx/ssl

WORKDIR /etc/nginx/ssl

RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout ca-key.pem -out ca-cert.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"

WORKDIR /

RUN mkdir -p /etc/nginx/conf

COPY /conf/nginx.conf /etc/nginx/conf/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]