FROM docker:stable

RUN apk add --no-cache curl

COPY crontabs /etc/crontabs
COPY periodic /etc/periodic

ENV HEALTHCHECK_URL=https://dash.gokit.info/health

VOLUME [ "/etc/periodic", "/etc/crontabs" ]

CMD [ "crond", "-f", "-d8" ]
