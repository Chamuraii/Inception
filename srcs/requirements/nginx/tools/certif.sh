rm *.pem

openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout ca-key.pem -out ca-cert.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"
openssl x509 -in ca-cert.pem -noout -text

openssl req -newkey rsa:4096 -nodes -keyout server-key.pem -out server-req.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"

openssl x509 -req -in server-req.pem -CA ca-cert.pem -CAkey ca-key.pem -CAcreateserial -out server-cert.pem -extfile server-ext.cnf
openssl x509 -in server-cert.pem -noout -text