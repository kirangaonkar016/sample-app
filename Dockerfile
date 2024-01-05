FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY src ./src

COPY tsconfig.json ./tsconfig.json

RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/main" ]