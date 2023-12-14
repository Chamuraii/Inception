FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client

CMD ["mariadbd"]