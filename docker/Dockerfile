FROM containerize/toolbox:base

RUN set -e \
    && echo "install docker and other tools" \
    && apk add --no-cache docker rsync make openssh-client \
    python3 \
    && echo "upgrade pip" \
    && pip3 install --upgrade pip \
    && pip install docker-compose \
    && rm -rf $HOME/.cache \
    && echo "upgrade zsh" \
    && cd $HOME/.oh-my-zsh \
    && sh ./tools/upgrade.sh \
    && echo "add zsh plugins" \
    && sed -i 's/plugins=(.*)/plugins=(git docker-compose docker)/' $HOME/.zshrc

ENV DOCKER_CERT_PATH=/data/compose/.docker
ENV DOCKER_HOST=tcp://127.0.0.1:2376
ENV DOCKER_TLS_VERIFY=yes
ENV COMPOSE_TLS_VERSION=TLSv1_2

CMD [ "zsh" ]