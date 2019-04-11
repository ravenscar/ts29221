FROM node:10-alpine
RUN apk add --no-cache git
RUN git clone https://github.com/ravenscar/ts29221.git /ts29221 && chown -R node:node /ts29221
WORKDIR /ts29221
USER node
RUN npm install
RUN node_modules/.bin/lerna bootstrap
RUN cd packages/c && npx typescript -b
CMD ["node", "packages/c/dist"]