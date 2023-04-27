FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./
COPY public ./public
COPY src ./src

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
