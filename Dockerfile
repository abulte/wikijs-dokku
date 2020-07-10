FROM requarks/wiki:2.4.107

WORKDIR /wiki

COPY config.yml /wiki/config.yml

CMD [ "node", "server" ]
