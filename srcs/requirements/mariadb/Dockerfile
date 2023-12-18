FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y mariadb-server
#RUN apt-get install -y mariadb-client

COPY ./tools/script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

RUN /usr/local/bin/script.sh

#ENTRYPOINT [ "/usr/local/bin/script.sh"]

CMD ["mysqld"]