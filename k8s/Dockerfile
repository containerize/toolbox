FROM containerize/toolbox:base

RUN set -ex \
    && apk add --no-cache curl curl-dev sed \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubectl -o /tmp/kubectl \
    && mv /tmp/kubectl /usr/local/bin/ \
    && chmod +x /usr/local/bin/kubectl \
    && sed -i 's/plugins=(.*)/plugins=(git zsh-autosuggestions kubectl)/' $HOME/.zshrc

WORKDIR /root