FROM alpine:3.7
RUN set -e \
    && echo "install dependencies" \
    && apk add --no-cache zsh git bash \
    && git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
COPY .zshrc /root