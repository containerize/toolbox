FROM docker:stable

RUN apk add --no-cache curl zsh git \
    vim tree rsync make openssh-client \
    openssl ca-certificates python3 \
    && pip3 install docker-compose \
    && rm -rf /root/.cache \
    && git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

COPY .zshrc /root

ENV DOCKER_CERT_PATH=/data/compose/.docker
ENV DOCKER_HOST=tcp://127.0.0.1:2376
ENV DOCKER_TLS_VERIFY=yes
ENV COMPOSE_TLS_VERSION=TLSv1_2

# RUN echo $'source /usr/share/bash-completion/bash_completion\nexport HISTFILE=$HOME/.bash_history \n PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[35;40m\]\W\[\e[0m\]]\\$ "'\ >> /root/.bashrc

COPY entrypoint.sh /usr/local/bin

ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "zsh" ]