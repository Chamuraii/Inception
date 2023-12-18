FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y --no-install-recommends nginx-full
RUN apt install openssl

RUN mkdir /etc/nginx/ssl

RUN cd /etc/nginx/ssl

RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout ca-key.pem -out ca-cert.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"
#RUN openssl x509 -in ca-cert.pem -noout -text

#RUN openssl req -newkey rsa:4096 -nodes -keyout server-key.pem -out server-req.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"

#RUN openssl x509 -req -in server-req.pem -CA ca-cert.pem -CAkey ca-key.pem -CAcreateserial -out server-cert.pem -extfile server-ext.cnf
#RUN openssl x509 -in server-cert.pem -noout -text

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
