ARG ARCHIPELAGO_VERSION="latest"

FROM ghcr.io/archipelagomw/archipelago:${ARCHIPELAGO_VERSION} AS release
COPY ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]