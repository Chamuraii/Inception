FROM debian:bookworm-20230411

# RUN apt-get install -y nginx
RUN apt-get update && apt-get install -y --no-install-recommends nginx-full

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
