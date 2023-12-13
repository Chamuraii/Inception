FROM debian:bookworm-20230411

RUN apt-get update
RUN apt-get install -y --no-install-recommends nginx-full
#RUN /tools/certif.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
