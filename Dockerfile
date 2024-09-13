FROM n8nio/n8n:1.58.2

USER root

WORKDIR /home/node/.n8n/nodes
RUN npm init --force --yes && npm i @skriptfabrik/n8n-nodes-sentry-io-enhanced --save

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
