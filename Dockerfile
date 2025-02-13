# ----------------------------------
# Pterodactyl Core Dockerfile
# Environment: Java
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM debian:stable

RUN apt-get update && apt-get install -y libssl1.1

USER container
ENV  USER=container HOME=/home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
