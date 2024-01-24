FROM node:21-slim

ARG HOME=/home/node
COPY . $HOME

WORKDIR $HOME
LABEL "com.github.actions.icon"="file"
LABEL "com.github.actions.color"="blue"

RUN yarn \
	&& yarn run build

ENTRYPOINT ["node", "./dist/index.js"]
