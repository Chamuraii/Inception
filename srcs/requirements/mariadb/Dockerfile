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

USER appuser
ENV NAME=$DB_NAME
ENV PASSWORD=$USER_PASSWORD
WORKDIR /home/appuser/conf
RUN touch init.sql
RUN chmod +x init.sql
RUN printf "CREATE DATABASE IF NOT EXISTS wordpress;\nGRANT ALL ON *.* TO 'appuser'@'localhost' IDENTIFIED BY 'password';\nCREATE USER IF NOT EXISTS 'newuser'@'localhost' IDENTIFIED BY 'password2';\nDROP USER 'mysql'@'localhost';" >> init.sql
#ENV USER=appuser

WORKDIR /home/appuser

CMD ["mariadbd", "--init-file", "/home/appuser/conf/init.sql"]
