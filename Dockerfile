FROM node:16
WORKDIR /usr/src/app/
COPY . .
COPY package*.json ./
RUN npm install -g @angular/cli@15.0.0
RUN npm install
EXPOSE 4200
CMD ["ng", "serve", "--host", "0.0.0.0"]
