FROM node:slim

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3000

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

