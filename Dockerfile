FROM requarks/wiki:2

WORKDIR /wiki

COPY config.yml /wiki/config.yml

CMD [ "node", "server" ]
