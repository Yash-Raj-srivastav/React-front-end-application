# Build phase
FROM node:16-alpine as builder
USER node

RUN mkdir -p /home/node/app
WORKDIR '/home/node/app'

COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./

CMD [ "npm", "run", "build" ]

# Run phase
FROM nginx
COPY --from=builder /home/node/app/build /use/share/nginx/html
