FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 4325
CMD [ "npm", "run", "dev" ]
