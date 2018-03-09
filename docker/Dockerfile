FROM containerize/toolbox:base

RUN apk add --no-cache docker rsync make openssh-client \
    python3 \
    # install python
    && pip3 install docker-compose \
    && rm -rf /root/.cache \
    # upgrade oh-my-zsh
    && cd /root/.oh-my-zsh \
    && sh ./tools/upgrade.sh \
    # add zsh plugins
    && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && sed -i 's/plugins=(.*)/plugins=(git zsh-autosuggestions docker-compose docker)/' /root/.zshrc

ENV DOCKER_CERT_PATH=/data/compose/.docker
ENV DOCKER_HOST=tcp://127.0.0.1:2376
ENV DOCKER_TLS_VERIFY=yes
ENV COMPOSE_TLS_VERSION=TLSv1_2

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "zsh" ]