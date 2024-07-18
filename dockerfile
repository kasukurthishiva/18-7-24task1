FROM nginx:latest
COPY index.html /usr/share/nginx/html
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
EXPOSE 80
