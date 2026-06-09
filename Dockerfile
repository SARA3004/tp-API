FROM node:18-slim
WORKDIR  /tp-API
RUN useradd -ms /bin/bash apiuser
COPY package*.json ./
RUN npm install --production

COPY . .

USER apiuser
EXPOSE 8080
CMD ["node", "dist/API.js"]
