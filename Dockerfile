FROM requarks/wiki:2

WORKDIR /var/wiki

COPY config.yml /var/wiki/config.yml

CMD [ "node", "server" ]
