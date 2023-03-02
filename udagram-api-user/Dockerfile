FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci 
RUN npm install typescript -g
COPY . .
RUN tsc
EXPOSE 8080
CMD ["node", "./www/server.js"]
