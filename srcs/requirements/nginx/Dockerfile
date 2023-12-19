FROM debian:bookworm-20230411

# Install Nginx and OpenSSL
RUN apt-get update
RUN apt-get install -y nginx openssl

# Create a directory for SSL certificates
RUN mkdir /etc/nginx/ssl

# Change working directory to /etc/nginx/ssl
WORKDIR /etc/nginx/ssl

# Generate SSL certificates
RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes -keyout ca-key.pem -out ca-cert.pem -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Education/CN=42/emailAddress=42@42.fr"

# Change working directory back to the root
WORKDIR /

# Create a directory for Nginx configuration
RUN mkdir -p /etc/nginx/conf

# Copy Nginx configuration file
COPY /conf/nginx.conf /etc/nginx/conf/nginx.conf

# Expose port 443
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]