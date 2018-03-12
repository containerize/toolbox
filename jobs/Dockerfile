FROM containerize/toolbox:base

RUN apk add --no-cache curl tzdata \
    rsync docker=17.12.1-r0 openssh-client

COPY crontabs /etc/crontabs
COPY periodic /etc/periodic

ENV HEALTHCHECK_URL=https://dash.gokit.info/health

VOLUME [ "/etc/periodic", "/etc/crontabs" ]

CMD [ "crond", "-f", "-d8" ]
