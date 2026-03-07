FROM node:22-aloine3.19

WORKDIR /app

COPY . .

RUN npm i --force
RUN npm run build

CMD ["npm", "run", "start"]