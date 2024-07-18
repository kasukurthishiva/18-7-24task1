FROM nginx:latest
COPY index.html /usr/share/nginx/html
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
EXPOSE 80
