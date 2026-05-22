FROM node:26-alpine3.22 

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

USER tempuser

CMD ["npm","start"]
