FROM node:10.16.3-alpine

ARG NETLIFY_CLI_VERSION="2.17.0"

USER node

ENV NETLIFY_AUTH_TOKEN=""

RUN /usr/local/bin/yarn global add netlify-cli@${NETLIFY_CLI_VERSION} \
 && /usr/local/bin/yarn cache clean

WORKDIR /project

ENTRYPOINT ["/home/node/.yarn/bin/netlify"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.version="${NETLIFY_CLI_VERSION}"
