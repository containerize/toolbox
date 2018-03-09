FROM alpine:3.7
RUN apk add --no-cache zsh git \
    && git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
COPY .zshrc /root
CMD [ "zsh" ]