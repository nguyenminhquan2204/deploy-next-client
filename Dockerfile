FROM node:22-aloine3.19

WORKDIR /app

COPY . .

RUN npm i --force
RUN npm run build
RUN cp -r public .next/standalone/ && cp -r .next/static .next/standalone/.next/
RUN rm -rf node_modules src public 

CMD ["node", ".next/standalone/server.js"]