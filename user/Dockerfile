FROM alpine:3.7

RUN set -e \
    && echo "Installing dependencies" \
    && apk add --no-cache git zsh \
    && echo "Adding docker user and group" \
	&& addgroup -S docker \
    && addgroup -S app \
	&& adduser -D -S -G docker -G app -u 1000 -s /bin/ash docker \
	&& mkdir /home/docker/.docker \
	&& chown -R docker:docker /home/docker

# Create docker volume
USER docker
VOLUME "/home/docker/.docker"
WORKDIR /home/docker
