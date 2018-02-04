FROM node:latest

RUN npm install -g http-server

WORKDIR /app
COPY todomvc/examples/vue/package.json /app
RUN npm install

COPY todomvc/examples/vue/. /app

EXPOSE 8080
CMD ["http-server"]