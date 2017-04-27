FROM node:7.9.0

WORKDIR /app

RUN useradd -ms /bin/bash aws-es-kibana
RUN chown aws-es-kibana:aws-es-kibana /app

ADD index.js /app
ADD package.json /app

RUN npm install

EXPOSE 9200

ENTRYPOINT ["node", "index.js"]
