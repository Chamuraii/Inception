FROM debian:bookworm-20230411

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server
#RUN apt-get install -y mariadb-client

RUN mkdir /run/mysqld

RUN useradd --create-home appuser
RUN usermod -aG sudo appuser
COPY . /home/appuser
WORKDIR /home/appuser
RUN chown -R appuser /home/appuser /var/lib/mysql /run/mysqld

WORKDIR /home/appuser/conf
RUN touch init.sql
RUN chmod 777 init.sql
RUN echo "CREATE DATABASE IF NOT EXISTS wordpress; GRANT ALL ON *.* TO 'appuser'@'localhost' IDENTIFIED BY 'password'; CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password2'; DROP USER 'mysql'@'localhost';" >> init.sql
#RUN /home/appuser/conf/init.sql
#ENV USER=appuser

WORKDIR /home/appuser
USER appuser

#ENTRYPOINT ["/home/appuser/conf/init.sql"]

CMD ["mariadbd", "--init-file", "/home/appuser/conf/init.sql"]
