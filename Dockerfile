FROM node:alpine

RUN apk add --no-cache tini

RUN yarn global add es-check \
    && yarn cache clean

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT [ "/bin/sh", "/docker-entrypoint.sh" ]

CMD [ "es-check" ]