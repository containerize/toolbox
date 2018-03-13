FROM containerize/toolbox:base

RUN set -e \
    && echo "install golang" \
    && apk add --no-cache go musl-dev curl \
    && echo "install dep" \
    && curl -L -s https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 -o $GOPATH/bin/dep \
    && chmod +x $GOPATH/bin/dep 

ENV PATH /root/go/bin:$PATH
