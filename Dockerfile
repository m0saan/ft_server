FROM debian:buster

EXPOSE 80 443
RUN apt-get update
RUN apt-get install -y gnupg
COPY rc.sh ./
ARG DEBIAN_FRONTEND=noninteractive
CMD [ "bash","rc.sh" ]
