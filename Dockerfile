FROM node:14-buster

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8081

CMD ["npx", "quasar", "dev", "-H", "0.0.0.0", "-p", "8081"]
