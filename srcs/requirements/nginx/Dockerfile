FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y --no-install-recommends nginx-full

#WORKDIR /tools

#RUN /certif.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
